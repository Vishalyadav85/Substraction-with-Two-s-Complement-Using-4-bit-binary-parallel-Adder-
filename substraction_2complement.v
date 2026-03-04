`timescale 1ns / 1ps

module substraction_2complement(input [3:0] a,b,input cin,output reg signed [3:0] ans, output cout);
wire [3:0]x;
wire [3:0] s;
wire [3:0]z;
result a0(.b(b),.x(x));
binary_parallel_adder uut(.a(a),.b(x),.c_in(cin),.s(s),.c_out(cout));
result a1(.b(s),.x(z));
always@(*)begin
if(cout==1'b1)
assign ans=s;
else
assign ans=-$signed(z);
end
endmodule
