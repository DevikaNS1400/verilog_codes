`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module sr_flipflop_tb();
reg S,R,clk;
wire Q,Qn;
sr_flipflop u1(.S(S),.R(R),.clk(clk),.Q(Q),.Qn(Qn));
always #5 clk=~clk;
initial begin
clk=0;S=1'b0;R=1'b0;#10;
S=1'b0;R=1'b1;#15;
S=1'b1;R=1'b0;#20;
S=1'b0;R=1'b0;#10;
S=1'b1;R=1'b1;#10;
$finish;
end
endmodule
