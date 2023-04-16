
/*
module jk(input j,input k, input clr,input clk,output q,output qbar);
  wire a,b,y,ybar,c,d,cbar;
  assign  cbar =~clk,
          a=~(j&qbar&clk&clr),
          b=~(k&q&clk),
          y=~(a&ybar),
          ybar=~(clr&b&y),
          c=~(y&cbar),
          d=~(ybar&cbar),
          q=~(c&qbar),
          qbar=~(d&clr&q);
endmodule
*/


module jk(j, k, clear, clk, q, qbar);
  
  input j, k, clear, clk;
  output q, qbar;
  wire a, b, d, y, ybar, cbar, e;
  nand(a, qbar, j, clk, clear);
  nand(b, clk, k, q);
  nand(y, a, ybar);
  nand(ybar, y, clear, b);
  not(cbar, clk);
  nand(e, y, cbar);
  nand(d, cbar, ybar);
  nand(q, e, qbar);
  nand(qbar, q, clear, d);

endmodule