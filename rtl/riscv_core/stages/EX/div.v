/*div模块,支持有符号和无符号运算,参考https://blog.csdn.net/leishangwen/article/details/39155487
    时序逻辑,需要32个周期,主要部分是一个状态机:
    DivFree:除法模块空闲
    DivByZero:除数是0
    DivOn:除法运算进行中
    DivEnd:除法运算结束
复位时DIV模块处于DivFree状态，当start_i为DivStart(1)且annul_i为0时，除法操作开始：
    如果除数opdata2_i为0，进入DivByZero状态，除法结果为0。然后进入DivEnd状态，通知EX模块除法运算结果得到，后者设置start_i为DivStop(0)，除法运算结束。
    否则进入DivOn状态，经过32个时钟周期得出除法结果。然后进入DivEnd状态，通知EX模块除法运算结果得到，后者会设置start_i为DivStop(0)，除法运算结束。
DivOn时试商法过程:
    因为除法指令的时钟周期数必须固定，所以不可能从可以除尽的位灵活开始，因此选择将被除数一位一位向左移供除数去减;
    dividend低32位初始化为被除数，每执行一次试商就整体左移一位，并将当前位的商写在最低位;
    第k次迭代后dividend[k-1:0]保存得到的中间结果，dividend[31:k]保存的就是被除数中还没有参与运算的部分，即作差后剩余的数;
    dividend[63:32]是被减数，除数是减数，此处作差，结果保存在div_temp中。
*/

`include "defines.vh"

module div(
    input  wire         clk,
    input  wire         rst,
    input  wire         signed_div_i,   // 是否是有符号除法
    input  wire [31:0]  opdata1_i,      // 被除数
    input  wire [31:0]  opdata2_i,      // 除数
    input  wire         start_i,        // 是否开始除法运算
    output reg  [63:0]  result_o,       // {remainder, quotient}
    output reg          ready_o         // 是否结束
);

    wire [32:0] div_temp;

    reg  [5:0]  cnt;
    reg  [64:0] dividend;
    reg  [1:0]  state;
    reg  [31:0] divisor;
    reg  [31:0] reg_op1;
    reg  [31:0] reg_op2;

    wire [31:0] abs_op1;
    wire [31:0] abs_op2;

    assign abs_op1 = (signed_div_i && opdata1_i[31]) ? (~opdata1_i + 32'd1) : opdata1_i;
    assign abs_op2 = (signed_div_i && opdata2_i[31]) ? (~opdata2_i + 32'd1) : opdata2_i;

    assign div_temp = {1'b0, dividend[63:32]} - {1'b0, divisor};

    always @(posedge clk) begin
        if (rst) begin
            state    <= `DivFree;
            ready_o  <= `DivResultNotReady;
            result_o <= 64'b0;
            cnt      <= 6'b0;
            dividend <= 65'b0;
            divisor  <= 32'b0;
            reg_op1  <= 32'b0;
            reg_op2  <= 32'b0;
        end else begin
            case (state)

                `DivFree: begin
                    ready_o  <= `DivResultNotReady;
                    result_o <= 64'b0;

                    if (start_i == `DivStart) begin
                        state <= `DivOn;
                        cnt   <= 6'b0;

                        /*
                            原逻辑等价替换：

                            原来：
                                dividend <= {`ZeroWord, `ZeroWord};
                                dividend[32:1] <= temp_op1;

                            等价于：
                                dividend[64:33] = 32'b0
                                dividend[32:1]  = abs_op1
                                dividend[0]     = 1'b0
                        */
                        dividend <= {32'b0, abs_op1, 1'b0};
                        divisor  <= abs_op2;

                        reg_op1 <= opdata1_i;
                        reg_op2 <= opdata2_i;
                    end
                end

                `DivOn: begin
                    if (cnt != 6'd32) begin
                        if (div_temp[32] == 1'b1) begin
                            dividend <= {dividend[63:0], 1'b0};
                        end else begin
                            dividend <= {div_temp[31:0], dividend[31:0], 1'b1};
                        end

                        cnt <= cnt + 6'd1;
                    end else begin
                        /*
                            商符号修正：
                            有符号除法 && 被除数与除数异号 => 商为负
                        */
                        if (signed_div_i && (reg_op1[31] ^ reg_op2[31])) begin
                            dividend[31:0] <= ~dividend[31:0] + 32'd1;
                        end

                        /*
                            余数符号修正：
                            RISC-V 中 REM 的余数符号跟被除数一致
                        */
                        if (signed_div_i && reg_op1[31]) begin
                            dividend[64:33] <= ~dividend[64:33] + 32'd1;
                        end

                        state <= `DivEnd;
                        cnt   <= 6'b0;
                    end
                end

                `DivEnd: begin
                    result_o <= {dividend[64:33], dividend[31:0]};
                    ready_o  <= `DivResultReady;

                    if (start_i == `DivStop) begin
                        state    <= `DivFree;
                        ready_o  <= `DivResultNotReady;
                        result_o <= 64'b0;
                    end
                end

                default: begin
                    state    <= `DivFree;
                    ready_o  <= `DivResultNotReady;
                    result_o <= 64'b0;
                    cnt      <= 6'b0;
                    dividend <= 65'b0;
                    divisor  <= 32'b0;
                end

            endcase
        end
    end

endmodule