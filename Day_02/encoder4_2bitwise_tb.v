`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module encoder4_2bitwise_tb;
reg [3:0]I;
wire [1:0]y;
encoder_4_2bitwise u1(.y(y),.I(I));
initial
begin
I=4'b1000;#10;
I=4'b0100;#10;
I=4'b0010;#10;
I=4'b0001;#10;
$finish;
end
endmodule
