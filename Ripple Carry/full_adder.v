`timescale 1ns / 1ps

module full_adder(sum, c_out, in1, in2, c_in);
    input in1,in2,c_in;
    output sum, c_out;
    //see logic diagram and try to implement that
    wire t_sum, t_c1, t_c2;
    half_adder blk1(t_sum, t_c1, in1, in2);
    //t_sum and t_c1 being outputs and in1 and in2 inputs
    half_adder blk2(sum, t_c2, t_sum, c_in);
    //sum and t_c2 being final outputs and now the outputs of previous adder are input in this
    or blk3(c_out, t_c1 , t_c2);
endmodule
