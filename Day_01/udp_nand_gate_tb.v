`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 14:46:04
// Design Name: 
// Module Name: udp_nand_gate_tb
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


module udp_nand_gate_tb;
reg A,B;
wire Y;
udp_nand_gate u1(.A(A),.B(B),.Y(Y));
initial 
begin
A=0;B=0;#10;
A=0;B=1;#10;
A=1;B=0;#10;
A=1;B=1;#10;
$finish;
end
endmodule
