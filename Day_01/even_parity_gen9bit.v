`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 21:44:48
// Design Name: 
// Module Name: even_parity_gen9bit
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


module even_parity_gen9bit(output y,input[8:0] x);
  wire y1,y2,y3,y4,y5,y6,y7;
   xor g1(y1,x[0],x[1]);
  xor g2(y2,x[2],x[3]);
  xor g3(y3,x[4],x[5]);
  xor g4(y4,x[6],x[7]);
  xor g5(y5,y1,y2);
  xor g6(y6,y3,y4);
  xor g7(y7,y5,y6);
  xor g8(y,y7,x[8]);
endmodule

