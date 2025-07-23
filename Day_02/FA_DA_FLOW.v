`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 21:45:58
// Design Name: 
// Module Name: FA_DA_FLOW
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


module FA_DA_FLOW(
output S,
output c_out,
input A,
input B,
input C
);
assign S=A^B^C;
assign c_out=(A&B)|(B&C)|(C&A);
endmodule
