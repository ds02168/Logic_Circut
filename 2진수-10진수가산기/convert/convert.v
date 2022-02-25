module convert(A,B,C,D,E,F,G,H,I,J,K,L,M);

input A,B,C,D,E;
output F,G,H,I,J,K,L,M;

assign F = 1'b0;
assign G = 1'b0;
assign H = (A&C)|(A&B);
assign I = (A&(~B)&(~C))|((~A)&B&C)|(B&C&D)|((~A)&B&D);
assign J = (A&(~B)&(~C)&D)|(A&B&C&(~D))|((~A)&B&(~C)&(~D));
assign K = (A&(~C)&(~D))|((~A)&(~B)&C)|(A&B&(~C))|((~A)&C&D);
assign L = (A&(~B)&(~C)&(~D))|((~A)&B&C&(~D))|(A&B&(~C)&D)|((~A)&(~B)&D)|((~B)&C&D);
assign M = E;

endmodule 