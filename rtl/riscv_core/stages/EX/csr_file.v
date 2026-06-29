module csr_file(
    input wire clk, rst,

    input wire [11:0] csr_addr_i,
    input wire [31:0] csr_wdata_i,
    input wire csr_we_i,
    input wire csr_write_intent_i,
    output reg [31:0] csr_rdata_o,
    output wire csr_illegal_o,

    input wire trap_valid_i,
    input wire [31:0] trap_pc_i,
    input wire [31:0] trap_tval_i,
    input wire [3:0] trap_cause_i,

    input wire mret_valid_i,
    input wire retire_i,

    output wire [31:0] mtvec_o,
    output wire [31:0] mepc_o,
    output wire [1:0] priv_mode_o
);
    localparam PRIV_U = 2'b00;
    localparam PRIV_M = 2'b11;

    localparam CSR_MSTATUS  = 12'h300;
    localparam CSR_MISA     = 12'h301;
    localparam CSR_MIE      = 12'h304;
    localparam CSR_MTVEC    = 12'h305;
    localparam CSR_MSCRATCH = 12'h340;
    localparam CSR_MEPC     = 12'h341;
    localparam CSR_MCAUSE   = 12'h342;
    localparam CSR_MTVAL    = 12'h343;
    localparam CSR_MIP      = 12'h344;
    localparam CSR_MCYCLE   = 12'hB00;
    localparam CSR_MINSTRET = 12'hB02;
    localparam CSR_MCYCLEH  = 12'hB80;
    localparam CSR_MINSTRETH= 12'hB82;
    localparam CSR_CYCLE    = 12'hC00;
    localparam CSR_TIME     = 12'hC01;
    localparam CSR_INSTRET  = 12'hC02;
    localparam CSR_CYCLEH   = 12'hC80;
    localparam CSR_TIMEH    = 12'hC81;
    localparam CSR_INSTRETH = 12'hC82;
    localparam CSR_MHARTID   = 12'hF14;
    localparam CSR_SATP     = 12'h180;
    localparam CSR_PMPCFG0   = 12'h3A0;
    localparam CSR_PMPADDR0  = 12'h3B0;
    localparam CSR_MEDELEG   = 12'h302;
    localparam CSR_MIDELEG   = 12'h303;

    reg [31:0] mstatus;
    reg [31:0] mie;
    reg [31:0] mtvec;
    reg [31:0] mscratch;
    reg [31:0] mepc;
    reg [31:0] mcause;
    reg [31:0] mtval;
    reg [31:0] mip;
    reg [1:0] priv_mode;
    reg [63:0] mcycle;
    reg [63:0] minstret;
    reg [31:0] mhartid;
    reg [31:0] satp;
    reg [31:0] pmpcfg0;
    reg [31:0] pmpaddr0;
    reg [31:0] medeleg;
    reg [31:0] mideleg;
    wire csr_known;
    wire csr_priv_ok;
    wire csr_readonly;

    assign csr_known =
        (csr_addr_i == CSR_MSTATUS)  |
        (csr_addr_i == CSR_MISA)     |
        (csr_addr_i == CSR_MIE)      |
        (csr_addr_i == CSR_MTVEC)    |
        (csr_addr_i == CSR_MSCRATCH) |
        (csr_addr_i == CSR_MEPC)     |
        (csr_addr_i == CSR_MCAUSE)   |
        (csr_addr_i == CSR_MTVAL)    |
        (csr_addr_i == CSR_MIP)      |
        (csr_addr_i == CSR_MCYCLE)   |
        (csr_addr_i == CSR_MINSTRET) |
        (csr_addr_i == CSR_MCYCLEH)  |
        (csr_addr_i == CSR_MINSTRETH)|
        (csr_addr_i == CSR_CYCLE)    |
        (csr_addr_i == CSR_TIME)     |
        (csr_addr_i == CSR_INSTRET)  |
        (csr_addr_i == CSR_CYCLEH)   |
        (csr_addr_i == CSR_TIMEH)    |
        (csr_addr_i == CSR_INSTRETH) |
        (csr_addr_i == CSR_MHARTID)   |
        (csr_addr_i == CSR_SATP)     |
        (csr_addr_i == CSR_PMPCFG0)   |
        (csr_addr_i == CSR_PMPADDR0)  |
        (csr_addr_i == CSR_MEDELEG)   |
        (csr_addr_i == CSR_MIDELEG);

    assign csr_priv_ok = (priv_mode >= csr_addr_i[9:8]);
    assign csr_readonly = (csr_addr_i[11:10] == 2'b11);
    assign csr_illegal_o = ~csr_known | ~csr_priv_ok | (csr_write_intent_i & csr_readonly);

    assign mtvec_o = {mtvec[31:2], 2'b00};
    assign mepc_o = mepc;
    assign priv_mode_o = priv_mode;

    function [31:0] legal_mstatus;
        input [31:0] value;
        begin
            legal_mstatus = 32'b0;
            legal_mstatus[3] = value[3];     // MIE
            legal_mstatus[7] = value[7];     // MPIE
            legal_mstatus[12:11] = (value[12:11] == PRIV_U) ? PRIV_U : PRIV_M;
        end
    endfunction

    always @(*) begin
        case (csr_addr_i)
            CSR_MSTATUS:   csr_rdata_o = legal_mstatus(mstatus);
            CSR_MISA:      csr_rdata_o = 32'h40000100; // RV32I
            CSR_MIE:       csr_rdata_o = mie;
            CSR_MTVEC:     csr_rdata_o = mtvec;
            CSR_MSCRATCH:  csr_rdata_o = mscratch;
            CSR_MEPC:      csr_rdata_o = mepc;
            CSR_MCAUSE:    csr_rdata_o = mcause;
            CSR_MTVAL:     csr_rdata_o = mtval;
            CSR_MIP:       csr_rdata_o = mip;
            CSR_MCYCLE:    csr_rdata_o = mcycle[31:0];
            CSR_MINSTRET:  csr_rdata_o = minstret[31:0];
            CSR_MCYCLEH:   csr_rdata_o = mcycle[63:32];
            CSR_MINSTRETH: csr_rdata_o = minstret[63:32];
            CSR_CYCLE:     csr_rdata_o = mcycle[31:0];
            CSR_TIME:      csr_rdata_o = mcycle[31:0];
            CSR_INSTRET:   csr_rdata_o = minstret[31:0];
            CSR_CYCLEH:    csr_rdata_o = mcycle[63:32];
            CSR_TIMEH:     csr_rdata_o = mcycle[63:32];
            CSR_INSTRETH:  csr_rdata_o = minstret[63:32];
            CSR_MHARTID:   csr_rdata_o = mhartid;
            CSR_SATP:      csr_rdata_o = satp;
            CSR_PMPCFG0:   csr_rdata_o = pmpcfg0;
            CSR_PMPADDR0:  csr_rdata_o = pmpaddr0;
            CSR_MEDELEG:   csr_rdata_o = medeleg;
            CSR_MIDELEG:   csr_rdata_o = mideleg;
            default:       csr_rdata_o = 32'b0;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mstatus <= 32'b0;
            mie <= 32'b0;
            mtvec <= 32'h80000000;
            mscratch <= 32'b0;
            mepc <= 32'b0;
            mcause <= 32'b0;
            mtval <= 32'b0;
            mip <= 32'b0;
            priv_mode <= PRIV_M;
            mcycle <= 64'b0;
            minstret <= 64'b0;
            mhartid <= 32'b0;
            satp <= 32'b0;
            pmpcfg0 <= 32'b0;
            pmpaddr0 <= 32'b0;
            medeleg <= 32'b0;
            mideleg <= 32'b0;
        end
        else begin
            mcycle <= mcycle + 64'd1;
            if (retire_i) begin
                minstret <= minstret + 64'd1;
            end

            if (trap_valid_i) begin
                mepc <= {trap_pc_i[31:2], 2'b00};
                mcause <= {28'b0, trap_cause_i};
                mtval <= trap_tval_i;
                mstatus[7] <= mstatus[3];
                mstatus[3] <= 1'b0;
                mstatus[12:11] <= priv_mode;
                priv_mode <= PRIV_M;
            end
            else if (mret_valid_i) begin
                priv_mode <= (mstatus[12:11] == PRIV_U) ? PRIV_U : PRIV_M;
                mstatus[3] <= mstatus[7];
                mstatus[7] <= 1'b1;
                mstatus[12:11] <= PRIV_U;
            end
            else if (csr_we_i) begin
                case (csr_addr_i)
                    CSR_MSTATUS:  mstatus <= legal_mstatus(csr_wdata_i);
                    CSR_MIE:      mie <= csr_wdata_i;
                    CSR_MTVEC:    mtvec <= csr_wdata_i;
                    CSR_MSCRATCH: mscratch <= csr_wdata_i;
                    CSR_MEPC:     mepc <= {csr_wdata_i[31:2], 2'b00};
                    CSR_MCAUSE:   mcause <= csr_wdata_i;
                    CSR_MTVAL:    mtval <= csr_wdata_i;
                    CSR_MIP:      mip <= csr_wdata_i;
                    CSR_MCYCLE:   mcycle[31:0] <= csr_wdata_i;
                    CSR_MINSTRET: minstret[31:0] <= csr_wdata_i;
                    CSR_MCYCLEH:  mcycle[63:32] <= csr_wdata_i;
                    CSR_MINSTRETH:minstret[63:32] <= csr_wdata_i;
                    CSR_MHARTID:   mhartid <= csr_wdata_i;
                    CSR_SATP:      satp <= csr_wdata_i;
                    CSR_PMPCFG0:   pmpcfg0 <= csr_wdata_i;
                    CSR_PMPADDR0:  pmpaddr0 <= csr_wdata_i;
                    CSR_MEDELEG:   medeleg <= csr_wdata_i;
                    CSR_MIDELEG:   mideleg <= csr_wdata_i;
                    default: begin
                    end
                endcase
            end
        end
    end
endmodule
