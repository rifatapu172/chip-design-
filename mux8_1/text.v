module stimulus;
  reg D0,D1,D2,D3,D4,D5,D6,D7,A,B,C;
  wire F;
  mux8to1 m1(F,D0,D1,D2,D3,D4,D5,D6,D7,A,B,C);
  
  initial
  
    $monitor($time,"F=%b ,D0=%b,D1=%b,D2=%b,D3=%b,D4=%b,D5=%b,D6=%b,D7=%b,A=%b,B=%b,C=%b",F,D0,D1,D2,D3,D4,D5,D6,D7,A,B,C);
   initial
   begin
    D0=1'b1;D1=1'b0;
    D2=1'b1;D3=1'b0;
    D4=1'b1;D5=1'b0;
    D6=1'b1;D7=1'b0;
       A=1'b0;B=1'b0;C=1'b0;
    #5 A=1'b0;B=1'b0;C=1'b1;
    #5 A=1'b0;B=1'b1;C=1'b0;
    #5 A=1'b0;B=1'b1;C=1'b1;
    #5 A=1'b1;B=1'b0;C=1'b0;
    #5 A=1'b1;B=1'b0;C=1'b1;
    #5 A=1'b1;B=1'b1;C=1'b0;
    #5 A=1'b1;B=1'b1;C=1'b1;
    #5 $stop;
  end
endmodule
