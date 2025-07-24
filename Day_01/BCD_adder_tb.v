`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module BCD_adder_tb;
reg [3:0]a,b;
reg Cin;
wire [3:0]S;
wire c_out;
BCD_DA_FLOW u1(.S(S),.c_out(c_out),.a(a),.b(b),.Cin(Cin));

initial
begin
a=4'b0111;b=4'b1000;Cin=1'b0;#10;
a=4'b1001;b=4'b0001;#10;
a=4'b0111;b=4'b1010;#10;
a=4'b0100;b=4'b0110;#10;
$finish;
end
endmodule
