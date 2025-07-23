`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module Demux_8_1(
output I0,I1,I2,I3,I4,I5,I6,I7,
input [2:0]S,
input D
);
wire w1,w2,w3;
not g1(w1,S[2]);
not g2(w2,S[1]);
not g3(w3,S[0]);
and g4(I0,D,w1,w2,w3);
and g5(I1,D,w1,w2,S[0]);
and g6(I2,D,w1,S[1],w3);
and g7(I3,D,w1,S[1],S[0]);
and g8(I4,D,S[2],w2,w3);
and g9(I5,D,S[2],w2,S[0]);
and g10(I6,D,S[2],S[1],w3);
and g11(I7,D,S[2],S[1],S[0]);
endmodule
