`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module mealy_nonovlp(
output reg detect,
input din,clk,reset
    );
reg[1:0] state,next_st;
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
 next_st=state;
 detect=0;
 case(state)
 S0:next_st=din?S1:S0;
 S1:next_st=din?S1:S2;
 S2:next_st=din?S3:S0;
 S3:begin
 if(din)
 next_st=S1;
 else begin
 next_st=S0;
 detect=1;
 end
 end
 default:next_st=S0;
 endcase
 end
endmodule
