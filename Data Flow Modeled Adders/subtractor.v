`timescale 1ns / 1ps
module subtractor(D,B,x,y,z);
    input x,y,z;
    output D,B;
    assign D = (~x & ~y & z)|(~x & y & ~z)|(x & ~y & z) | (x & y & z);
    assign B = (~x & y) | (~x & z) | (y & z);
endmodule
