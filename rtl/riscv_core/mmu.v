module mmu (
    input wire  [31:0] inst_vaddr,
    output wire [31:0] inst_paddr,
    input wire  [31:0] data_vaddr,
    output wire [31:0] data_paddr,
    output wire no_dcache
);
    //暂时不需要外设，所以暂时不区分指令和数据地址，直接将虚拟地址映射为物理地址
    assign inst_paddr = inst_vaddr;
    assign data_paddr = data_vaddr;
    assign no_dcache = 1'b0;
endmodule