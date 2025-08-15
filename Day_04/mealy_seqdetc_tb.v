`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mealy_seqdetc_tb();
reg din,clk,reset;
wire detect;
mealy_seqdetc u1(.din(din),.clk(clk),.reset(reset),.detect(detect));
always #5 clk=~clk;
initial begin
clk=0;reset=1;#10;
reset=0;din=1;#10;
din=0;#10;
din=1;#10;
din=0;#10;
din=1;#10;
din=1;#10;
din=0;#10;
din=1;#10;
din=1;#10;
din=1;#10;
din=1;#10;
din=0;#10;
din=0;#10;
$finish;
end
endmodule
