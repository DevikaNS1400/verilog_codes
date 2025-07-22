
/////////////////////////////////////////////////////////////////////////////////
 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//tb_9biteven_parity_gen
module tb_parity_gen9;
reg [8:0]x;
  wire y;
  even_parity_gen9bit u1(.y(y),.x(x));
  
  initial
    begin
    end
  initial
    begin
      x[8:0]=9'b000011000;#10;
      x[8:0]=9'b000111011;#10;
      x[8:0]=9'b011011000;#10;
      x[8:0]=9'b011111011;#10;
      $finish();
    end
endmodule
