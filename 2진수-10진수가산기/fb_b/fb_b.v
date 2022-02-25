module fb_b(A,B,data,com,clock,Cin);

input [3:0]A;
input [3:0]B;
input Cin;
input clock;

output [7:0]com;
output [6:0]data;

wire [4:0]in;
wire [3:0]ten;
wire [3:0]one;


B_adder adder(A[3],A[2],A[1],A[0],B[3],B[2],B[1],B[0],in[0],in[1],in[2],in[3],in[4],Cin);
convert con(in[4],in[3],in[2],in[1],in[0],ten[0],ten[1],ten[2],ten[3],one[0],one[1],one[2],one[3]);
light li(ten[3],ten[2],ten[1],ten[0],one[3],one[2],one[1],one[0],data[0],data[1],data[2],data[3],data[4],data[5],
data[6],com[0],com[1],com[2],com[3],com[4],com[5],com[6],com[7],clock);



endmodule 