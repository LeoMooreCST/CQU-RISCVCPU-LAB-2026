module mux2 #(
    parameter WIDTH = 32
)(
    input wire [WIDTH - 1 : 0] d0, d1,
    input wire sel,
    output wire [WIDTH - 1 : 0] out
);
    assign out = sel ? d1 : d0;
endmodule
