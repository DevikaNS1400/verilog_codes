`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module demux_1_8(
output I0,I1,I2,I3,I4,I5,I6,I7,
input [2:0]S,
input D
    );
assign I0 = (S==3'b000)?D:1'b0;
assign I1 = (S==3'b001)?D:1'b0;
assign I2 = (S==3'b010)?D:1'b0;
assign I3 = (S==3'b011)?D:1'b0;
assign I4 = (S==3'b100)?D:1'b0;
assign I5 = (S==3'b101)?D:1'b0;
assign I6 = (S==3'b110)?D:1'b0;
assign I7 = (S==3'b111)?D:1'b0;
endmodule
