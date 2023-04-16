`timescale 1ns / 1ps
module D_Latch(q,d,clk);
input d,clk;
output reg q;
    always 
    wait(clk)#5 //level sensitive timing control
        q=d;
endmodule
