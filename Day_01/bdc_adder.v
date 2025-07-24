
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module BCD_DA_FLOW(
output [3:0]S,
output [3:0]Z,
output c_out,
input [3:0]a,
input [3:0]b,
input Cin
);
wire c1,c2,c3,c4,w,c5,c6,c7;
FA_DA_FLOW u1(Z[0],c1,a[0],b[0],Cin);
FA_DA_FLOW u2(Z[1],c2,a[1],b[1],c1);
FA_DA_FLOW u3(Z[2],c3,a[2],b[2],c2);
FA_DA_FLOW u4(Z[3],c4,a[3],b[3],c3);
assign w=c4|(Z[3]&Z[2])|(Z[3]&Z[1]);
FA_DA_FLOW u5(S[0],c5,Z[0],0,Cin);
FA_DA_FLOW u6(S[1],c6,Z[1],w,c5);
FA_DA_FLOW u7(S[2],c7,Z[2],w,c6);
FA_DA_FLOW u8(S[3],c_out,Z[3],0,c7);

endmodule

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
 
