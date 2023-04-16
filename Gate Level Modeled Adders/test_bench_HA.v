`timescale 1ns / 1ps
module test_bench_HA();
    reg a_in;
    reg b_in;
    wire c_out;
    wire s_out;
    halfadder HA(s_out,c_out,a_in,b_in);
    
    initial
    begin
    a_in = 1'b0;
    b_in = 1'b0;
    # 5
    a_in = 1'b0;
    b_in = 1'b1;
    
    a_in = 1'b0;
    b_in = 1'b1;
    
    # 5
    a_in = 1'b1;
    b_in = 1'b1;
    end
endmodule
