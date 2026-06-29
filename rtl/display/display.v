`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2015/09/17 01:12:00
// Design Name: 
// Module Name: display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module display(
    input wire clk,resetn,
    input wire [31:0]s,
    output wire [6:0]seg,
    output reg [7:0]ans
    );
    reg [20:0] count;
    reg [3:0] digit;  //fix from [4:0] to [3:0]
    always@(posedge clk) begin
        if (~resetn)  
            count <= 0;
        else 
            count <= count + 1;
    end
    always @(posedge clk) begin
        case(count[20:18])
            3'd0: begin
                ans = 8'b11111110;
                digit = s[3:0];
            end
            
            3'd1:begin
                ans = 8'b11111101;
                digit = s[7:4];
            end

            3'd2:begin
                ans = 8'b11111011;
                digit =s[11:8];
            end
            
            3'd3:begin
                ans = 8'b11110111;
                digit = s[15:12];
            end
            
            3'd4:begin
                ans = 8'b11101111;
                digit = s[19:16];
            end
                
            3'd5:begin
                ans = 8'b11011111;
                digit = s[23:20];
            end
        
            3'd6:begin
                ans = 8'b10111111;
                digit =s[27:24];
            end
                
            3'd7:begin
                ans = 8'b01111111;
                digit = s[31:28];
            end
        endcase
    end
    seg7 U4(.din(digit),.dout(seg));
endmodule