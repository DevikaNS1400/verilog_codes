`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////

module Binary_gray_conv(
output [3:0]G,
input [3:0]B
   );
 or  g1(G[3],B[3],B[3]);
 xor g2(G[2],B[3],B[2]);
 xor g3(G[1],B[2],B[1]);
 xor g4(G[0],B[1],B[0]);
 
endmodule
