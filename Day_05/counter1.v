`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module counter1(
output [1:0]q,
input clk
    );
//wire [1:0]w;
//assign w=q;
t_ff u2(.Q(q[0]),.clk(clk),.T(1'b1));
t_ff u1(.Q(q[1]),.clk(clk),.T(q[0]));

endmodule


module t_ff(
output reg Q,
//output Qn,
input clk,
input T);
initial Q=1'b0;
always@(posedge clk)begin
case(T)
1'b0:Q<=Q;
1'b1:Q<=~Q;
default:Q<=1'bx;
endcase
end
//assign Qn=~Q;
endmodule
