`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module mux2_1bitwise(
output Y,
input A,B,
input S
);
assign Y=(A&~S)|(B&S);
endmodule
