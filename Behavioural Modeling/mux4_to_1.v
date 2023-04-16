`timescale 1ns / 1ps
module mux4_to_1(out,i0,i1,i2,i3,s0,s1);
    input i0,i1,i2,i3,s0,s1;
    output reg out;
    always @(*)
    begin
    if({s1,s0}==2'd0)
        out=i0;
    else if({s1,s0}==2'd1)
        out=i1;
    else if({s1,s0}==2'd2)
        out=i2;
    else
        out=i3;
    end
endmodule