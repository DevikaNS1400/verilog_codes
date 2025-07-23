`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 04:11:43
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
reg A,B,C;
wire S,c_out;
//FA_gtlvl u1(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_gtlvl
FA_Dataflow u2(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_dataflow
//  FA_using_HA u3(.S(S),.c_out(c_out),.A(A),.B(B),.C(C));//FA_using_HA
initial
begin

A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
$finish;
end
endmodule
