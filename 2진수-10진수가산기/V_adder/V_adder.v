module V_adder(A,B,S,Cin,Cout);

input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;
wire [2:0]w;

F_adder F0(A[0],B[0],1'b0,w[0],S[0]);
F_adder F1(A[1],B[1],w[0],w[1],S[1]);
F_adder F2(A[2],B[2],w[1],w[2],S[2]);
F_adder F3(A[3],B[3],w[2],Cout,S[3]);




endmodule 