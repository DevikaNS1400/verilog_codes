`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module Binary_Gray_conv_tb;
reg [3:0]B;
wire [3:0]G;
binary2gray u2(.G(G),.B(B));

initial
begin
B=4'b0111;#10;
B=4'b1110;#10;
B=4'b1000;#10;
B=4'b1011;#10;
B=4'b1111;#10;
B=4'b0101;#10;
B=4'b1001;#10;
B=4'b0100;#10;
$finish;
end
endmodule
