`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module even_parity(
output y,
input [8:0]x
    );
  wire y1,y2,y3,y4,y5,y6,y7;
  assign y1=x[0]^x[1];
  assign y2=x[2]^x[3];
  assign y3=x[4]^x[5];
  assign y4=x[6]^x[7];
  assign y5=y1^y2;
  assign y6=y3^y4;
  assign y7=y5^y6;
  assign y=y7^x[8];
endmodule
