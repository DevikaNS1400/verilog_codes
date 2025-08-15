`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module jk_2_dff_tb();
reg D,clk;
wire Q,Qn;
jk_2_dff u1(.Q(Q),.Qn(Qn),.D(D),.clk(clk));
always #5 clk=~clk;
initial begin
$monitor($time,"clk=%d,D=%d,Q=%d",clk,D,Q);
clk=1'b0;D=1'b1;#10;
D=1'b0;#10;
D=1'b1;#15
D=1'b0;#10;
D=1'b1;#10;
$finish;
end
endmodule
