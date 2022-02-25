module B_adder(A0,A1,A2,A3,B0,B1,B2,B3,S0,S1,S2,S3,Cout,Cin);

input A0,A1,A2,A3,B0,B1,B2,B3,Cin;
output S0,S1,S2,S3,Cout;
wire w1,w2,w3;

F_adder F0(A0,B0,1'b0,w1,S0);
F_adder F1(A1,B1,w1,w2,S1);
F_adder F2(A2,B2,w2,w3,S2);
F_adder F3(A3,B3,w3,Cout,S3);


endmodule 