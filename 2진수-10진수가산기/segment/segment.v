module segment(A,B,C,D,a,b,c,d,e,f,g);

input A,B,C,D;
output a,b,c,d,e,f,g;

assign a = ((~A)&C)|(B&C)|(A&(~D))|((~B)&(~D))|((~A)&B&D)|(A&(~B)&(~C));
assign b = ((~B)&(~C))|((~B)&(~D))|((~A)&(~C)&(~D))|(A&(~C)&D)|((~A)&C&D);
assign c = ((~A)&B)|(A&(~B))|((~C)&D)|((~B)&(~C))|((~B)&D);
assign d = (A&(~C))|((~A)&(~B)&(~D))|((~B)&C&D)|(B&(~C)&D)|(B&C&(~D));
assign e = (A&B)|(A&C)|((~B)&(~D))|(C&(~D));
assign f = ((~C)&(~D))|(A&(~B))|(A&C)|(B&(~D))|((~A)&B&(~C));
assign g = (A&(~B))|(C&(~D))|(A&D)|((~B)&C)|((~A)&B&(~C));


endmodule 