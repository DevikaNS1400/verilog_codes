`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module three_one_tb();
wire detect;
reg din,clk,reset;
integer i;
reg [15:0]test_ip;
three_one u1(.detect(detect),.din(din),.clk(clk),.reset(reset));
always #5 clk=~clk;
initial begin
clk=0;reset=1;
test_ip=16'b0011101111000111;
din=0;#10;
reset=0;#10;
for(i=0;i<16;i=i+1)begin
din=test_ip[i];#10;
end
$finish;
end
endmodule
