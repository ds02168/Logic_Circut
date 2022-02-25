module H_adder(a,b,s,c);

input a,b;
output s,c;

assign c = a & b;
assign s = a ^ b;

endmodule 
