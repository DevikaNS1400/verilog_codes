`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module demux2_1bitwise(
output A,
output B,
input D,
input S
    );
 assign A=D&(~S);
 assign B=D&S;
endmodule
