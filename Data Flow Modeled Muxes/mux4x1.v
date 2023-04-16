`timescale 1ns / 1ps

module mux4x1(a,b,c,d,s0,s1,out);
    input a,b,c,d,s0,s1;
    output out;
    wire w1,w2;
    mux2x1 m1(a,b,s0,w1);
    mux2x1 m2(c,d,s0,w2);
    mux2x1 m3(w1,w2,s1,out);
endmodule
