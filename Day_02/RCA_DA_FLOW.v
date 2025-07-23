`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module RCA_DA_FLOW(
output [3:0]S,
output c_out,
input [3:0]a,
input [3:0]b,
input Cin
);
wire c1,c2,c3;
FA_DA_FLOW u1(S[0],c1,a[0],b[0],Cin);
FA_DA_FLOW u2(S[1],c2,a[1],b[1],c1);
FA_DA_FLOW u3(S[2],c3,a[2],b[2],c2);
FA_DA_FLOW u4(S[3],c_out,a[3],b[3],c3);

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