`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module tb_trist_2_1_mux;
  reg x,y,sel;
  wire f;
  
  tri_st_buf_sel u1(.f(f),.y(y),.sel(sel));
  
  tri_st_buf_seln u2(.f(f),.x(x),.sel(sel));
  
  initial
    begin
      $dumpfile("tb_trist_2_1_mux.vcd");
      $dumpvars(1);
    end
  initial
    begin
      $monitor ("[$monitor] time=%0t sel=%b,x=%b,y=%b,f=%b", $time, sel, x,y,f);
      #5;
     sel=1'b0;x=1'b0;y=1'b1;#10;
     sel=1'b1;x=1'b0;y=1'b1;#10;
     sel=1'b0;x=1'b1;y=1'b1;#10;
     sel=1'b1;x=1'b0;y=1'b0;#10;
     
      
      $finish();
      
    end
endmodule
