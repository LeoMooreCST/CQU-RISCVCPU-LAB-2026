module riscv(
	input wire clk, rst,
	//CPU <-sram like-> I_CACHE	
	output wire 	   inst_req, 
	output wire        inst_wr,
	output wire [1:0]  inst_size,
	output wire [31:0] inst_addr,
	output wire [31:0] inst_wdata,
	input wire 	       inst_addr_ok,
	input wire 	       inst_data_ok,
	input wire  [31:0] inst_rdata,
	//CPU <-sram like-> D_CACHE
	output wire        data_req,
	output wire        data_wr,
	output wire [1:0]  data_size,
	output wire [31:0] data_addr,
	output wire [31:0] data_wdata,
	input wire         data_addr_ok,
	input wire         data_data_ok,
	input wire  [31:0] data_rdata,
	output wire [31:0] debug_wb_pc,
	output wire [3 :0] debug_wb_rf_wen,
	output wire [4 :0] debug_wb_rf_wnum,
	output wire [31:0] debug_wb_rf_wdata
);
    //datapath传出来的sram信号
    wire 		inst_sram_en    ;
    wire [31:0] inst_sram_addr  ;  //PC
    wire [31:0] inst_sram_rdata ;  //instr
    wire 		i_stall         ;
    wire 		data_sram_en    ;
    wire [31:0] data_sram_addr  ;
    wire [31:0] data_sram_rdata ;
    wire [3:0]  data_sram_wen   ;
    wire [31:0] data_sram_wdata ;
    wire        d_stall         ;
	wire 		longest_stall   ;


	controller c(
		//
	);
	datapath d(
		//自己的信号
		.i_stall(i_stall),
		.d_stall(d_stall),
		.longest_stall(longest_stall),
		//debug
		.debug_wb_pc(debug_wb_pc),
		.debug_wb_rf_wen(debug_wb_rf_wen),
		.debug_wb_rf_wnum(debug_wb_rf_wnum),
		.debug_wb_rf_wdata(debug_wb_rf_wdata)
	);

	i_sram_to_sram_like i_sram_to_sram_like(
		.clk(clk), .rst(rst),
		//sram
		.inst_sram_en     (inst_sram_en),
		.inst_sram_addr	  (inst_sram_addr),
		.inst_sram_rdata  (inst_sram_rdata),
		.i_stall		  (i_stall),
		//sram-like
		.inst_req		  (inst_req), 
		.inst_wr		  (inst_wr),
		.inst_size	   	  (inst_size),
		.inst_addr		  (inst_addr),
		.inst_wdata		  (inst_wdata),
		.inst_addr_ok	  (inst_addr_ok),
		.inst_data_ok	  (inst_data_ok),
		.inst_rdata		  (inst_rdata),
		.longest_stall	  (longest_stall)
	);

	d_sram_to_sram_like d_sram_to_sram_like(
		.clk(clk), .rst(rst),
		//sram
		.data_sram_en     (data_sram_en),
		.data_sram_addr   (data_sram_addr),
		.data_sram_rdata  (data_sram_rdata),
		.data_sram_wen    (data_sram_wen),
		.data_sram_wdata  (data_sram_wdata),
		.d_stall		  (d_stall),
		//sram-like
		.data_req		  (data_req),    
		.data_wr		  (data_wr),
		.data_size		  (data_size),
		.data_addr		  (data_addr),
		.data_wdata		  (data_wdata),
		.data_addr_ok	  (data_addr_ok),
		.data_data_ok	  (data_data_ok),
		.data_rdata		  (data_rdata),
		.longest_stall	  (longest_stall)
	);
endmodule
