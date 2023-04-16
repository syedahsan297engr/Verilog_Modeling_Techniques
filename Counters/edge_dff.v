`timescale 1ns / 1ps
// Edge-triggered D flipflop 
module edge_dff(q, qbar, d, clk, clear); 
    // Inputs and outputs 
    output q,qbar; 
    input d, clk, clear; 
    // Internal variables 
    wire s, sbar, r, rbar,cbar; 
    // dataflow statements 
    //Create a complement of signal clear
    assign cbar = ~clear; 
    // Input latches; A latch is level sensitive. An edge-sensitive 
    // flip-flop is implemented by using 3 SR latches. 
    assign sbar = ~(rbar & s), 
     s = ~(sbar & cbar & ~clk), 
     r = ~(rbar & ~clk & s), 
     rbar = ~(r & cbar & d); 
    // Output latch 
    assign q = ~(s & qbar), 
     qbar = ~(q & r & cbar); 
endmodule 
