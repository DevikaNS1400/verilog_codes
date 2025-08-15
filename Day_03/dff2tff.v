`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module dff2tff(
output Q,
output Qn,
input T,
input clk
    );
wire td ,q1;
assign td=T^q1;
D_flip_flop u1(q1,td,clk);
assign Q=q1;
assign Qn=~q1;
endmodule

module D_flip_flop(
output reg Q,
input D,clk
    );
initial Q=1'b0;
always@(posedge clk)
Q<=D;
endmodule