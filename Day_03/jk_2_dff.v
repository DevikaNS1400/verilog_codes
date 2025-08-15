`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module jk_2_dff(
output Q,
output Qn,
input D,
input clk
    );
wire kd=~D;
jk_flipflop u1(Q,Qn,D,kd,clk);
endmodule


module jk_flipflop(
output reg Q,
output Qn,
input J,
input K,
input clk
    );
always@(posedge clk) begin
case({J,K})
2'b00:Q<=Q;
2'b01:Q<=1'b0;
2'b10:Q<=1'b1;
2'b11:Q<=~Q;
endcase
end
assign Qn=~Q;
endmodule