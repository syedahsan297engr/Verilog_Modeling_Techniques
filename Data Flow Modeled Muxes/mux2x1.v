`timescale 1ns / 1ps



module mux2x1(a,b,s,out);
    input a,b,s;
    output out;
    assign out = (a&~s)|(b&s);
endmodule
