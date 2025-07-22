`timescale 1ns / 1ps

module basic_gates(
    input a,
    input b,
    output y1_and,
    output y2_or,
    output y3_nand,
    output y4_nor,
    output y5_xor,
    output y6_xnor,
    output y7_not
    );
    and g1(y1_and,a,b);
    or g2(y2_or,a,b);
    nand g3(y3_nand,a,b);
    nor g4(y4_nor,a,b);
    xor g5(y5_xor,a,b);
    xnor g6(y6_xnor,a,b);
    not g7(y7_not,a);
endmodule
