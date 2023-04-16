`timescale 1ns / 1ps
module Adder_16(sum, c_out, in1, in2, c_in);
    output[15:0] sum;
    output c_out;
    input[15:0] in1,in2;
    input c_in;
    wire[14:0] w;
    full_adder fa0(sum[0],w[0] ,in1[0], in2[0], c_in);
    full_adder fa1(sum[1],w[1] ,in1[1], in2[1], w[0]);
    full_adder fa2(sum[2],w[2] ,in1[2], in2[2], w[1]);
    full_adder fa3(sum[3],w[3] ,in1[3], in2[3], w[2]);
    
    full_adder fa4(sum[4],w[4] ,in1[4], in2[4], w[3]);
    full_adder fa5(sum[5],w[5] ,in1[5], in2[5], w[4]);
    full_adder fa6(sum[6],w[6] ,in1[6], in2[6], w[5]);
    full_adder fa7(sum[7],w[7] ,in1[7], in2[7], w[6]);
    
    full_adder fa8(sum[8],w[8] ,in1[8], in2[8], w[7]);
    full_adder fa9(sum[9],w[9] ,in1[9], in2[9], w[8]);
    full_adder fa10(sum[10],w[10] ,in1[10], in2[10], w[9]);
    full_adder fa11(sum[11],w[11] ,in1[11], in2[11], w[10]);
    
    full_adder fa12(sum[12],w[12] ,in1[12], in2[12], w[11]);
    full_adder fa13(sum[13],w[13] ,in1[13], in2[13], w[12]);
    full_adder fa14(sum[14],w[14] ,in1[14], in2[14], w[13]);
    full_adder fa15(sum[15],c_out ,in1[15], in2[15], w[14]);
endmodule
