`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module moore_ovlp_1010(
output reg detect,
input din,clk,reset
    );
reg[2:0] state,next_st;
parameter S0=3'd0,
          S1=3'd1,
          S2=3'd2,
          S3=3'd3,
          S4=3'd4;
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
 S3:next_st=din?S1:S4;
 S4:begin
 detect=1;
 if(din)
 next_st=S3;
 else begin
 next_st=S0;
 end
 end
 default:next_st=S0;
 endcase
 end
endmodule
