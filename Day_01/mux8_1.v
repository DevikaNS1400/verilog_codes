`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module mux8_1(
output Y,
input I0,
input I1,
input I2,
input I3,
input I4,
input I5,
input I6,
input I7,
input [2:0]S
    );
wire Y1,Y2;
mux4_1 u1(Y1,I0,I1,I2,I3,S[1:0]);
mux4_1 u2(Y2,I4,I5,I6,I7,S[1:0]);
mux2_1 u3(Y,Y1,Y2,S[2]);
endmodule

module mux4_1(
output y1,
input A0,
input A1,
input A2,
input A3,
input [1:0]R);
wire w1,w2,w3,w4,w5,w6;
not g1(w1,R[0]);
not g2(w2,R[1]);
and g3(w3,w1,w2,A0);     //S1'S0'A0
and g4(w4,w2,R[0],A1);   //S1'S0A1
and g5(w5,R[1],w1,A2);   //S1S0'A2
and g6(w6,R[1],R[0],A3); //S1S0A3
or g7(y1,w3,w4,w5,w6);
endmodule 

module mux2_1(
output y2,
input B0,
input B1,
input T
);
wire w7,w8,w9;
not g8(w7,T);
and g9(w8,w7,B0);      //S2'B0
and g10(w9,T,B1);      //S2B1
or g11(y2,w8,w9);
endmodule



