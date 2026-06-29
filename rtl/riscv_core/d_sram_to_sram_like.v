module d_sram_to_sram_like(
    input wire clk, rst,
    //From CPU datapath
    input wire         data_sram_en,      //读写数据请求
    input wire  [31:0] data_sram_addr,    //读写数据地址
    input wire  [3:0]  data_sram_wen,     //写使能
    input wire [31:0]  data_sram_wdata,   //写数据
    //Back to CPU datapath
    output wire [31:0] data_sram_rdata,   //返回给CPU的数据
    output wire        d_stall,           //数据访问未完成，CPU需要stall
    //sram like To D_CACHE
    output wire        data_req,          //数据请求
    output wire        data_wr,           //写请求
    output wire [1:0]  data_size,         //读写数据大小
    output wire [31:0] data_addr,         //读写数据地址
    output wire [31:0] data_wdata,        //写数据
    //From D_CACHE
    input wire         data_addr_ok,
    input wire         data_data_ok,
    input wire  [31:0] data_rdata,        //读的实际数据
    input wire         longest_stall
);
    reg addr_rcv;      //地址握手成功
    reg do_finish;     //读写事务结束

    always @(posedge clk) begin
        addr_rcv <= rst          ? 1'b0 :
        //保证先data_req再addr_rcv；如果addr_ok同时data_ok，则优先data_ok
                    data_req & data_addr_ok & ~data_data_ok ? 1'b1 :    
                    data_data_ok ? 1'b0 : addr_rcv;
    end

    always @(posedge clk) begin
        do_finish <= rst          ? 1'b0 :
                     data_data_ok ? 1'b1 :
                     ~longest_stall ? 1'b0 : do_finish;
    end

    //save rdata
    reg [31:0] data_rdata_save;
    always @(posedge clk) begin
        data_rdata_save <= rst ? 32'b0:
                           data_data_ok ? data_rdata : data_rdata_save;
    end

    //SRAM like To D_CACHE
    assign data_req = data_sram_en & ~addr_rcv & ~do_finish;
    assign data_wr  = data_sram_en & |data_sram_wen;
    assign data_size = (data_sram_wen==4'b0001 || data_sram_wen==4'b0010 || data_sram_wen==4'b0100 || data_sram_wen==4'b1000) ? 2'b00:
                       (data_sram_wen==4'b0011 || data_sram_wen==4'b1100 ) ? 2'b01 : 2'b10;
    assign data_addr  = data_sram_addr;
    assign data_wdata = data_sram_wdata;

    //To CPU datapath
    assign data_sram_rdata = data_rdata_save;
    assign d_stall = data_sram_en & ~do_finish;
endmodule