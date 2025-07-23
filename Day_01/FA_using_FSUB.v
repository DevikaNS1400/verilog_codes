`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 17:00:06
// Design Name: 
// Module Name: FA_using_FSUB
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


module FA_using_FSUB(
output S,
output c_out,
input A,
input B,
input C
    );
wire w1,w2;
not g1(w1,A);
 Full_Subtractor u1(w2,c_out,w1,B,C);
not g2(S,w2);
endmodule


module Full_Subtractor(
output D,
output B_out,
input A,
input B,
input C
);
wire w1,w2,w3,w4;
xor g1(w1,A,B);
xor g2(D,w1,C);
not g3(w4,A);
and g4(w2,w4,B);
and g5(w5,B,C);
and g6(w6,C,w4);
or g7(B_out,w2,w5,w6);
endmodule
