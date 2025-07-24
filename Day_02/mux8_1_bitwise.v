`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mux8_1_bitwise(
output Y,
input I0,
input I1,
input I2,
input I3,
input I4,
input I5,
input I6,
input I7,
input [2:0]S   );
//wire w1,w2,w3;
/*
assign w1=~S[0];
assign w2=~S[1];
assign w3=~S[2];*/
assign Y=S[2]?(S[1]?(S[0]?I7:I6):(S[0]?I5:I4)):(S[1]?(S[0]?I3:I2):(S[0]?I1:I0));
endmodule
