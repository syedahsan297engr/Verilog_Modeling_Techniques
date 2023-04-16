`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2023 09:28:43 PM
// Design Name: 
// Module Name: stimulus
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module stimulus;
   reg a_in;
   reg b_in;
   wire c_out;
   wire s_out;
   half_adder HA(s_out,c_out,a_in,b_in);
   
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
