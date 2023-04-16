
module sync4coun(output [3:0]qx,input clrx, input clkx, input enx);
  wire p,t,n;
  assign p=enx&qx[1],
         t=p&qx[2],
         n=t&qx[3];
  jk j1(enx,enx,clrx,clkx,qx[0],);
  jk j2(p,p,clrx,clkx,qx[1],);
  jk j3(t,t,clrx,clkx,qx[2],);
  jk j4(n,n,clrx,clkx,qx[3],);
endmodule
