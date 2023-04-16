`timescale 1ns / 1ps

module mux8x1(a,b,c,d,e,f,g,h,s0,s1,s2,out);
    input a,b,c,d,e,f,g,h,s0,s1,s2;
    output out;
    wire w1,w2;
    mux4x1 m1(a,b,c,d,s0,s1,w1);
    mux4x1 m2(e,f,g,h,s0,s1,w2);
    mux2x1 m3(w1,w2,s2,out);
endmodule
