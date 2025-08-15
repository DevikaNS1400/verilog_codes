`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module moore_seqdetct110(
output reg detect,
input din,clk,reset
    );
reg [1:0] state,next_st;
parameter S0=2'd0,
          S1=2'd1,
          S2=2'd2,
          S3=2'd3;
//state register
always@(posedge clk or posedge reset)begin
if(reset)
   state<=S0;
else 
   state<=next_st;
end
////next state logic
always@(*)begin
next_st=state;
detect=0;
case(state)
S0:next_st=din?S1:S0;
S1:next_st=din?S2:S0;
S2:next_st=din?S2:S3;
S3:begin
 detect=1;
if(din)begin
   next_st=S1;
   end
 else
 next_st=S0;
 end
 endcase
 end 
 endmodule
