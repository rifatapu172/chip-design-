module mux(out,i0,i1,i2,i3,s1,s0);
  input i0,i1,i2,i3,s1,s0;
  output out;
  wire y0,y1,y2,y3,w1,w0;
  and a1(y0,i0,w1,w0);
  and a2(y1,i1,w1,s0);
  and a3(y2,i2,s1,w0);
  and a4(y3,i3,s1,s0);
  not n1(w1,s1);
  not n2(w0,s0);
  or r1(out,y0,y1,y2,y3);
endmodule
