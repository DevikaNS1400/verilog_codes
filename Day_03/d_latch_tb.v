`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 20:26:52
// Design Name: 
// Module Name: d_latch_tb
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
module d_latch_tb();
reg D,en;
wire Q;
d_latch u1(.Q(Q),.D(D),.en(en));
initial begin
en=1'b0;D=1'b1;#10;
en=1'b1;D=1'b0;#10;
D=1'b1;#10;
D=1'b0;#10;
$finish;
end
endmodule
