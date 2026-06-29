module cpu_top (
    input wire aclk,    
    input wire aresetn,   //low active

    output wire[3:0] arid,
    output wire[31:0] araddr,
    output wire[7:0] arlen,
    output wire[2:0] arsize,
    output wire[1:0] arburst,
    output wire[1:0] arlock,
    output wire[3:0] arcache,
    output wire[2:0] arprot,
    output wire arvalid,
    input wire arready,
                
    input wire[3:0] rid,
    input wire[31:0] rdata,
    input wire[1:0] rresp,
    input wire rlast,
    input wire rvalid,
    output wire rready, 
               
    output wire[3:0] awid,
    output wire[31:0] awaddr,
    output wire[7:0] awlen,
    output wire[2:0] awsize,
    output wire[1:0] awburst,
    output wire[1:0] awlock,
    output wire[3:0] awcache,
    output wire[2:0] awprot,
    output wire awvalid,
    input wire awready,
    
    output wire[3:0] wid,
    output wire[31:0] wdata,
    output wire[3:0] wstrb,
    output wire wlast,
    output wire wvalid,
    input wire wready,
    
    input wire[3:0] bid,
    input wire[1:0] bresp,
    input bvalid,
    output bready,
    //debug interface
    output wire[31:0] debug_wb_pc,
    output wire[3:0] debug_wb_rf_wen,
    output wire[4:0] debug_wb_rf_wnum,
    output wire[31:0] debug_wb_rf_wdata
);
    wire clk, rst;
    assign clk = aclk;
    assign rst = ~aresetn;
    //riscv core <-> sram_like <-> cache
    wire        cpu_inst_req  ;
    wire        cpu_inst_wr   ;
    wire [1:0]  cpu_inst_size ;
    wire [31:0] cpu_inst_addr ;
    wire [31:0] cpu_inst_wdata;
    wire        cpu_inst_addr_ok;
    wire        cpu_inst_data_ok;
    wire [31:0] cpu_inst_rdata;

    wire        cpu_data_req  ;
    wire        cpu_data_wr   ;
    wire [1:0]  cpu_data_size ;
    wire [31:0] cpu_data_addr ;
    wire [31:0] cpu_data_wdata;
    wire        cpu_data_addr_ok;
    wire        cpu_data_data_ok;
    wire [31:0] cpu_data_rdata;
    //cache <-> sram_like <-> DRAM
    wire        cache_inst_req  ;
    wire [31:0] cache_inst_addr ;
    wire        cache_inst_wr   ;
    wire [1:0]  cache_inst_size ;
    wire [31:0] cache_inst_wdata;
    wire [31:0] cache_inst_rdata;
    wire        cache_inst_addr_ok;
    wire        cache_inst_data_ok;

    wire        cache_data_req  ;
    wire [31:0] cache_data_addr ;
    wire        cache_data_wr   ;
    wire [1:0]  cache_data_size ;
    wire [31:0] cache_data_wdata;
    wire [31:0] cache_data_rdata;
    wire        cache_data_addr_ok;
    wire        cache_data_data_ok;
    //confreg and ram data sram like
    wire        ram_data_req  ;
    wire [31:0] ram_data_addr ;
    wire        ram_data_wr   ;
    wire [1:0]  ram_data_size ;
    wire [31:0] ram_data_wdata;
    wire [31:0] ram_data_rdata;
    wire        ram_data_addr_ok;
    wire        ram_data_data_ok;

    wire        conf_data_req  ;
    wire [31:0] conf_data_addr ;
    wire        conf_data_wr   ;
    wire [1:0]  conf_data_size ;
    wire [31:0] conf_data_wdata;
    wire [31:0] conf_data_rdata;
    wire        conf_data_addr_ok;
    wire        conf_data_data_ok;

    wire        wrap_data_req  ;
    wire [31:0] wrap_data_addr ;
    wire        wrap_data_wr   ;
    wire [1:0]  wrap_data_size ;
    wire [31:0] wrap_data_wdata;
    wire [31:0] wrap_data_rdata;
    wire        wrap_data_addr_ok;
    wire        wrap_data_data_ok;

    wire icache_flush;
    riscv riscv_core(
        .clk(clk), .rst(rst),
        //output
        .inst_req     (cpu_inst_req  ),
        .inst_wr      (cpu_inst_wr   ),
        .inst_size    (cpu_inst_size ),
        .inst_addr    (cpu_inst_addr ),
        .inst_wdata   (cpu_inst_wdata),
        //input
        .inst_addr_ok (cpu_inst_addr_ok),
        .inst_data_ok (cpu_inst_data_ok),
        .inst_rdata   (cpu_inst_rdata),
        //output
        .data_req     (cpu_data_req  ),
        .data_wr      (cpu_data_wr   ),
        .data_size    (cpu_data_size ),
        .data_addr    (cpu_data_addr ),
        .data_wdata   (cpu_data_wdata),
        //input
        .data_addr_ok (cpu_data_addr_ok),
        .data_data_ok (cpu_data_data_ok),
        .data_rdata   (cpu_data_rdata),
        .icache_flush   (icache_flush),
        .debug_wb_pc       (debug_wb_pc       ),
        .debug_wb_rf_wen   (debug_wb_rf_wen   ),
        .debug_wb_rf_wnum  (debug_wb_rf_wnum  ),
        .debug_wb_rf_wdata (debug_wb_rf_wdata )
    );
    //mmu: 将虚拟地址转换为物理地址, 判断是否需要经过D_Cache (暂不需要)
    //注意: 目前是不需要外设, 所以有关confreg均保留接口, 但不进行实现
    wire [31:0] cpu_inst_paddr;  //指令的物理地址
    wire [31:0] cpu_data_paddr;  //数据的物理地址
    wire no_dcache;              //是否不经过D_Cache
    mmu mmu(
        .inst_vaddr(cpu_inst_addr),
        .data_vaddr(cpu_data_addr),
        .inst_paddr(cpu_inst_paddr),
        .data_paddr(cpu_data_paddr),
        .no_dcache(no_dcache)
    );
    //指令Cache
    i_cache i_cache(
        .clk(clk), .rst(rst),
        .flush_i(icache_flush),
        //input
        .cpu_inst_req     (cpu_inst_req     ),
        .cpu_inst_wr      (cpu_inst_wr      ),
        .cpu_inst_size    (cpu_inst_size    ),
        .cpu_inst_addr    (cpu_inst_paddr   ), //使用物理地址
        .cpu_inst_wdata   (cpu_inst_wdata   ),
        //output
        .cpu_inst_rdata   (cpu_inst_rdata   ),
        .cpu_inst_addr_ok (cpu_inst_addr_ok ),
        .cpu_inst_data_ok (cpu_inst_data_ok ),
        //output -> axi
        .cache_inst_req   (cache_inst_req   ),
        .cache_inst_wr    (cache_inst_wr    ),
        .cache_inst_size  (cache_inst_size  ),
        .cache_inst_addr  (cache_inst_addr  ),
        .cache_inst_wdata (cache_inst_wdata ),
        //input
        .cache_inst_rdata (cache_inst_rdata ),
        .cache_inst_addr_ok(cache_inst_addr_ok),
        .cache_inst_data_ok(cache_inst_data_ok)
    );
    //数据分为外设conf和数据存储器两路
    bridge_1x2 bridge_1x2(
        .no_dcache        (no_dcache    ),
        //input
        .cpu_data_req     (cpu_data_req  ),
        .cpu_data_wr      (cpu_data_wr   ),
        .cpu_data_size    (cpu_data_size ),
        .cpu_data_addr    (cpu_data_paddr ),    //paddr
        .cpu_data_wdata   (cpu_data_wdata),
        //output
        .cpu_data_rdata   (cpu_data_rdata),
        .cpu_data_addr_ok (cpu_data_addr_ok),
        .cpu_data_data_ok (cpu_data_data_ok),
        //output
        .ram_data_req     (ram_data_req  ),
        .ram_data_wr      (ram_data_wr   ),
        .ram_data_size    (ram_data_size ),
        .ram_data_addr    (ram_data_addr ),
        .ram_data_wdata   (ram_data_wdata),
        //input
        .ram_data_rdata   (ram_data_rdata),
        .ram_data_addr_ok (ram_data_addr_ok),
        .ram_data_data_ok (ram_data_data_ok),
        //output
        .conf_data_req     (conf_data_req  ),
        .conf_data_wr      (conf_data_wr   ),
        .conf_data_size    (conf_data_size ),
        .conf_data_addr    (conf_data_addr ),
        .conf_data_wdata   (conf_data_wdata),
        //input
        .conf_data_rdata   (conf_data_rdata),
        .conf_data_addr_ok (conf_data_addr_ok),
        .conf_data_data_ok (conf_data_data_ok)
    );
    //数据Cache
    d_cache d_cache(
        .clk(clk), .rst(rst),
        //input
        .cpu_data_req     (ram_data_req  ),
        .cpu_data_wr      (ram_data_wr   ),
        .cpu_data_size    (ram_data_size ),
        .cpu_data_addr    (ram_data_addr ),
        .cpu_data_wdata   (ram_data_wdata),
        //output
        .cpu_data_rdata   (ram_data_rdata),
        .cpu_data_addr_ok (ram_data_addr_ok),
        .cpu_data_data_ok (ram_data_data_ok),
        //output -> axi
        .cache_data_req   (cache_data_req  ),
        .cache_data_wr    (cache_data_wr   ),
        .cache_data_size  (cache_data_size ),
        .cache_data_addr  (cache_data_addr  ),
        .cache_data_wdata (cache_data_wdata ),
        //input
        .cache_data_rdata (cache_data_rdata ),
        .cache_data_addr_ok(cache_data_addr_ok),
        .cache_data_data_ok(cache_data_data_ok)
    );
    //将confreg和d_cache信号合为一路
    bridge_2x1 bridge_2x1(
        .no_dcache        (no_dcache    ),
        //input
        .ram_data_req     (cache_data_req  ),
        .ram_data_wr      (cache_data_wr   ),
        .ram_data_size    (cache_data_size ),
        .ram_data_addr    (cache_data_addr ),
        .ram_data_wdata   (cache_data_wdata),
        //output
        .ram_data_rdata   (cache_data_rdata),
        .ram_data_addr_ok (cache_data_addr_ok),
        .ram_data_data_ok (cache_data_data_ok),
        //input
        .conf_data_req     (conf_data_req  ),
        .conf_data_wr      (conf_data_wr   ),
        .conf_data_size    (conf_data_size ),
        .conf_data_addr    (conf_data_addr ),
        .conf_data_wdata   (conf_data_wdata),
        //output
        .conf_data_rdata   (conf_data_rdata),
        .conf_data_addr_ok (conf_data_addr_ok),
        .conf_data_data_ok (conf_data_data_ok),
        //output
        .wrap_data_req     (wrap_data_req  ),
        .wrap_data_wr      (wrap_data_wr   ),
        .wrap_data_size    (wrap_data_size ),
        .wrap_data_addr    (wrap_data_addr ),
        .wrap_data_wdata   (wrap_data_wdata),
        //input
        .wrap_data_rdata   (wrap_data_rdata),
        .wrap_data_addr_ok (wrap_data_addr_ok),
        .wrap_data_data_ok (wrap_data_data_ok)
    );
    //sram_like <--> AXI
    cpu_axi_interface cpu_axi_interface(
        .clk(clk),
        .resetn(~rst),

        .inst_req       (cache_inst_req  ),
        .inst_wr        (cache_inst_wr   ),
        .inst_size      (cache_inst_size ),
        .inst_addr      (cache_inst_addr ),
        .inst_wdata     (cache_inst_wdata),
        .inst_rdata     (cache_inst_rdata),
        .inst_addr_ok   (cache_inst_addr_ok),
        .inst_data_ok   (cache_inst_data_ok),

        .data_req       (wrap_data_req  ),
        .data_wr        (wrap_data_wr   ),
        .data_size      (wrap_data_size ),
        .data_addr      (wrap_data_addr ),
        .data_wdata     (wrap_data_wdata ),
        .data_rdata     (wrap_data_rdata),
        .data_addr_ok   (wrap_data_addr_ok),
        .data_data_ok   (wrap_data_data_ok),

        .arid(arid),
        .araddr(araddr),
        .arlen(arlen),
        .arsize(arsize),
        .arburst(arburst),
        .arlock(arlock),
        .arcache(arcache),
        .arprot(arprot),
        .arvalid(arvalid),
        .arready(arready),

        .rid(rid),
        .rdata(rdata),
        .rresp(rresp),
        .rlast(rlast),
        .rvalid(rvalid),
        .rready(rready),

        .awid(awid),
        .awaddr(awaddr),
        .awlen(awlen),
        .awsize(awsize),
        .awburst(awburst),
        .awlock(awlock),
        .awcache(awcache),
        .awprot(awprot),
        .awvalid(awvalid),
        .awready(awready),

        .wid(wid),
        .wdata(wdata),
        .wstrb(wstrb),
        .wlast(wlast),
        .wvalid(wvalid),
        .wready(wready),

        .bid(bid),
        .bresp(bresp),
        .bvalid(bvalid),
        .bready(bready)
    );
endmodule