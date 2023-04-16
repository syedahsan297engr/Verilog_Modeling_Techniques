`timescale 1ns / 1ps

module half_adder(sum,carry,in1,in2);
    output sum;
    output carry;
    input in1,in2;
    xor x1(sum,in1,in2);
    and a1(carry,in1,in2);
endmodule
