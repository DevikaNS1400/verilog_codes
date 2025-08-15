`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module three_one(
output reg detect,
input din,
input clk,reset
    );
reg [1:0]state,next_st;
parameter S0=2'd0,
          S1=2'd1,
          S2=2'd2,
          S3=2'd3;
always@(posedge clk or posedge reset)begin
if(reset)
state<=S0;
else
state<=next_st;
end

always@(*)begin
detect=0;
next_st=S0;
case(state)
S0:next_st=din?S1:S0;
S1:next_st=din?S2:S0;
S2:begin
if(din)begin
detect=1;
next_st=S2;
end
else 
next_st=S0;
end
default:next_st=S0;
endcase
end
endmodule
