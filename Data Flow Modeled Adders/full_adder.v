`timescale 1ns / 1ps

module full_adder(sum,c_out,a,b,c_in);
    output sum; 
    output c_out; 
    input a, b; 
    input c_in; 
    assign {c_out,sum} = a+b+c_in;
endmodule
