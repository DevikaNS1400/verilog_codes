`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module moore_ovlp_tb();
wire detect;
reg din,clk,reset;
moore_ovlp_1010 u1(.detect(detect),.din(din),.clk(clk),.reset(reset));
always #5 clk=~clk;
initial begin
clk=0;reset=1;#10;
reset=0;din=1;#10;
din=0;#10;
din=1;#10;
din=1;#10;
din=0;#10;
din=1;#10;
din=0;#10;
din=1;#10;
din=0;#10;
din=0;#10;
din=0;#10;
$finish;
end
endmodule
