`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module D_FF_tb();
reg D,clk;
wire Q;
D_flip_flop u1(.Q(Q),.D(D),.clk(clk));
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
