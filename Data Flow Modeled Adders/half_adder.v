`timescale 1ns / 1ps

// Define a 4-bit full adder by using dataflow statements. 
module half_adder(sum, c_out, a, b); 
// I/O port declarations 
    output sum; 
    output c_out; 
    input  a, b; 
// Specify the function of a full adder 
    assign {c_out, sum} = a + b; 
endmodule 
