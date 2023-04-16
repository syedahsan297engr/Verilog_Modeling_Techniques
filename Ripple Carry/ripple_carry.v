`timescale 1ns / 1ps
module ripple_carry(sum, carry_out, a, b, carry_in);
    output[3:0] sum;
    output carry_out;
    input[3:0] a,b;
    input carry_in;
    //these above steps are implemented by seeing diagram
    wire c1, c2, c3;
    //wire act as a link b/w two blocks
    //in diagram we have used four full adders
    //full_adder(sum, c_out, in1, in2, c_in)
    full_adder fa0(sum[0], c1,a[0], b[0], carry_in);
    full_adder fa1(sum[1], c2, a[1], b[1], c1);
    full_adder fa2(sum[2], c3 , a[2], b[2], c2);
    full_adder fa4(sum[3], carry_out, a[3], b[3], c3);
endmodule
