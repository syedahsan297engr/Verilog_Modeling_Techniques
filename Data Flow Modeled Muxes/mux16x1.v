`timescale 1ns / 1ps

module mux16x1(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3,out);
    input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3;
    output out;
    wire w1,w2;
    mux8x1 m1(a,b,c,d,e,f,g,h,s0,s1,s2,w1);
    mux8x1 m2(i,j,k,l,m,n,o,p,s0,s1,s2,w2);
    mux2x1 m3(w1,w2,s3,out);
endmodule
