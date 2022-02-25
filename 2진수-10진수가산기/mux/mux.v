module mux(I0,I1,S,X);

input I0,I1;
input S;
output X;

assign X = ((~S)&I0)|(S&I1);

endmodule 