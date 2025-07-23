`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module FSub_tb;
reg A,B,C;
wire D,B_out;
//Full_Subtractor u1(.D(D),.B_out(B_out),.A(A),.B(B),.C(C));//FSub_gtlvl
FUll_Sub_Dataflow u2(.D(D),.B_out(B_out),.A(A),.B(B),.C(C));//FSub_dataflow
//Full_Sub_Hsub u3(.D(D),.B_out(B_out),.A(A),.B(B),.C(C));//FSub_Hsub
initial
begin

A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
$finish;
end
endmodule
