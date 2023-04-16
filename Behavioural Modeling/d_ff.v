`timescale 1ns / 1ps

module d_ff(q,d,clk,reset);
    input d,clk,reset;
    output reg q;
    always @(negedge clk) //event based timing control
        if(reset)
            q <= 1'b0;    
        else
            q <= d;
endmodule
//reset will work in AND condition now means let say reset is 1 and negedge of clk is not occured then q will not be zero.
//it will be assigned zero when there is reset=1 and negedge of clk.
