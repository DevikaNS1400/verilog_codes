`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 13:01:39
// Design Name: 
// Module Name: tb_basic_gates
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


module tb_basic_gates();
reg a,b;
wire y1_and,y2_or,y3_nand,y4_nor,y5_xor,y6_xnor,y7_not;
basic_gates u1(.y1_and(y1_and),.y2_or(y2_or),.y3_nand(y3_nand),.y4_nor(y4_nor),.y5_xor(y5_xor),.y6_xnor(y6_xnor),.y7_not(y7_not),.a(a),.b(b));
initial
begin
#1;
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
$finish;
end
endmodule
