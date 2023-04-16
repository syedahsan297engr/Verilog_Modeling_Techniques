`timescale 1ns / 1ps

module Adder_16(sum, c_out, in1, in2, c_in);
    output[15:0] sum;
    output[15:0] c_out;
    input[15:0] in1,in2;
    input c_in;
    assign {c_out,sum}=in1+in2+c_in;
endmodule
