`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module NAND_NOR_SWLVL(
input A,
input B,
output Y_nand,
output Y_nor
 );
 wire w1,w2;
 supply1 Vdd;
 supply0 gnd;
 
 pmos p1(Y_nand,Vdd,A);
 pmos p2(Y_nand,Vdd,B);
 nmos n1(w1,gnd,B);
 nmos n2(Y_nand,w1,A);
 
 pmos p3(w2,Vdd,A);
 pmos p4(Y_nor,w2,B);
 nmos n3(Y_nor,gnd,B);
 nmos n4(Y_nor,gnd,A);
 
endmodule
