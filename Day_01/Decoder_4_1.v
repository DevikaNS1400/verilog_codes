`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module Decoder_2_4(
output I0,
output I1,
output I2,
output I3,
input A,
input B
   );
assign I0= ~A&~B;
assign I1=~A&B;
assign I2=A&~B;
assign I3=A&B;   
endmodule
