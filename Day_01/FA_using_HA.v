`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module FA_using_HA(
output S,
output c_out,
input A,
input B,
input C 
 );
 wire w1,w2;
 //Half_Adder u3(.sum(w1),.carry(w2),.x(A),.y(Y));
 //Half_Adder u4(.sum(S),.carry(w3),.x(w1),.y(C));
 Half_Adder u3(w1,w2,A,B);
 Half_Adder u4(S,w3,w1,C);
or g1(c_out,w2,w3);
endmodule

module Half_Adder(
output sum,
output carry,
input x,
input y
);
xor g1(sum,x,y);
and g2(carry,x,y);
endmodule
