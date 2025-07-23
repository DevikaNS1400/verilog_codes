`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 22:28:15
// Design Name: 
// Module Name: RCA_DA_FLOW_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RCA_DA_FLOW_tb;
reg [3:0]a,b;
reg Cin;
wire [3:0]S;
wire c_out;
RCA_DA_FLOW u1(.S(S),.c_out(c_out),.a(a),.b(b),.Cin(Cin));

initial
begin
a=4'b0111;b=4'b1000;Cin=1'b0;#10;
a=4'b1001;b=4'b0001;#10;
a=4'b0111;b=4'b1010;#10;
a=4'b0100;b=4'b0110;#10;
$finish;
end
endmodule
