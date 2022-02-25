module F_adder(A,B,Cin,Cout,S);

input A,B,Cin;
output Cout,S;
wire w1,w2,w3;

H_adder h1(A,B,w1,w2);
H_adder h2(w1,Cin,S,w3);

assign Cout = w2 | w3;

endmodule 