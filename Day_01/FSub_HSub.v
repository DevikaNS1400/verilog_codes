`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 06:05:47
// Design Name: 
// Module Name: FSub_HSub
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


module FSub_HSub(
output D,
output B_out,
input A,
input B,
input C
 );
 wire w1,w2,w3;
 Half_Sub u1(w1,w2,A,B);
 Half_Sub u2(D,w3,w1,C);
 or g1(B_out,w2,w3);
endmodule

module Half_Sub(
output D1,
output B1,
input x,
input y);
wire w4;
xor g1(D1,x,y);
not g2(w4,x);
and g3(B1,w4,y);
endmodule
