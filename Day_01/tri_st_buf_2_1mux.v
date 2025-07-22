`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
module tri_st_buf_sel(output f,input y,input sel);
  assign f=sel ? y : 1'bz; 
endmodule

module tri_st_buf_seln(output f,input x,input sel);
  assign f=sel?1'bz:x;
endmodule