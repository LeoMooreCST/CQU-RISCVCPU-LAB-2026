module mux3 #(parameter WIDTH = 32) (
    input wire [WIDTH - 1 : 0] d0, d1, d2,
    input wire [1 : 0] sel,
    output wire [WIDTH - 1 : 0] out
);
    assign out = (sel == 2'b00) ? d0:
                 (sel == 2'b01) ? d1:
                 (sel == 2'b10) ? d2: 0;
endmodule
