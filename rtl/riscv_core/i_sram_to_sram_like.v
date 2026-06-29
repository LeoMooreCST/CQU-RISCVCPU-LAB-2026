module i_sram_to_sram_like (
    input wire clk, rst,
    //From CPU datapath
    input wire         inst_sram_en,    //读指令请求
    input wire  [31:0] inst_sram_addr,  //读指令地址
    //Back to CPU datapath
    output wire [31:0] inst_sram_rdata, //返回给CPU的指令
    output wire        i_stall,         //指令访问未完成，CPU需要stall
    //SRAM like To I_CACHE
    output wire        inst_req,        //读请求
    output wire        inst_wr,         //写请求:     恒为0
    output wire [1:0]  inst_size,       //读指令大小: 恒为2'b10
    output wire [31:0] inst_addr,       //读指令地址
    output wire [31:0] inst_wdata,      //写数据:     无效
    //From I_CACHE
    input wire         inst_addr_ok,
    input wire         inst_data_ok,
    input wire [31:0]  inst_rdata,
    //From datapath
    input wire         longest_stall
);
    reg addr_rcv;      //地址握手成功
    reg do_finish;     //读事务结束

    always @(posedge clk) begin
        addr_rcv <= rst          ? 1'b0 :
        //保证先inst_req再addr_rcv；如果addr_ok同时data_ok，则优先data_ok
                    inst_req & inst_addr_ok & ~inst_data_ok ? 1'b1 :
                    inst_data_ok ? 1'b0 : addr_rcv;
    end

    always @(posedge clk) begin
        do_finish <= rst          ? 1'b0 :
                     inst_data_ok ? 1'b1 :
                     ~longest_stall ? 1'b0 : do_finish;
    end

    //save rdata
    reg [31:0] inst_rdata_save;
    always @(posedge clk) begin
        inst_rdata_save <= rst ? 32'b0:
                           inst_data_ok ? inst_rdata : inst_rdata_save;
    end

    //SRAM like To I_CACHE
    assign inst_req   = inst_sram_en & ~addr_rcv & ~do_finish;
    assign inst_wr    = 1'b0;
    assign inst_size  = 2'b10;
    assign inst_addr  = inst_sram_addr;
    assign inst_wdata = 32'b0;

    //To CPU datapath
    assign inst_sram_rdata = inst_rdata_save;
    assign i_stall = inst_sram_en & ~do_finish;
endmodule