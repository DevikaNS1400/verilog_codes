`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module jk_flipflop_tb();
reg J,K,clk;
wire Q,Qn;
jk_flipflop u1(.Q(Q),.Qn(Qn),.J(J),.K(K),.clk(clk));
always #5 clk=~clk;
initial begin
clk=1'b0;J=1'b0;K=1'b0;#10;
J=1'b0;K=1'b1;#15;
J=1'b1;K=1'b1;#20;
J=1'b1;K=1'b1;#10;
J=1'b1;K=1'b0;#15;
$finish;
end
endmodule
