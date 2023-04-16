`timescale 1ns / 1ps

module stimulus;
   reg a_in;
   reg b_in;
   wire c_out;
   wire s_out;
   halfadder HA(s_out,c_out,a_in,b_in);
   
   initial
   begin
   a_in = 0;
   b_in = 0;
   #50
   a_in = 0;
   b_in = 1;
   #50
   a_in = 1;
   b_in = 0;
   #50
   a_in = 1;
   b_in = 1;
   end
endmodule
