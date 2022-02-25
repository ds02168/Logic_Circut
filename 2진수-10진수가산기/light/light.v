module light(T0,T1,T2,T3,O0,O1,O2,O3,data0,data1,data2,data3,data4,data5,data6,com0,com1,com2,com3,com4,com5,com6,com7,clock);

input T0,T1,T2,T3;
input O0,O1,O2,O3;
input clock;
output data0,data1,data2,data3,data4,data5,data6;
output com0,com1,com2,com3,com4,com5,com6,com7;
wire a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2;

segment seg1(T3,T2,T1,T0,a1,b1,c1,d1,e1,f1,g1);
segment seg2(O3,O2,O1,O0,a2,b2,c2,d2,e2,f2,g2);

mux m0(a1,a2,clock,data0);
mux m1(b1,b2,clock,data1);
mux m2(c1,c2,clock,data2);
mux m3(d1,d2,clock,data3);
mux m4(e1,e2,clock,data4);
mux m5(f1,f2,clock,data5);
mux m6(g1,g2,clock,data6);

mux cm1(0,1,clock,com0);
mux cm2(1,0,clock,com1);



assign com2 = 6'b111111;
assign com3 = 6'b111111;
assign com4 = 6'b111111;
assign com5 = 6'b111111;
assign com6 = 6'b111111;
assign com7 = 6'b111111;


endmodule 