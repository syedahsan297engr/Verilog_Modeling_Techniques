`timescale 1ns / 1ps
module multiplexer4_to_1(OUTPUT, IN0, IN1, IN2, IN3, S1, S0);
    input IN0, IN1, IN2, IN3, S0, S1;
    output OUTPUT;
    // Use nested conditional operator 
    assign OUTPUT = S1 ? ( S0 ? IN3 : IN2) : (S1 ? IN1 : IN0); 
endmodule
