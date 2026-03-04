`timescale 1ns / 1ps


module binary_parallel_adder(input [3:0]a,b,input c_in,output [3:0] s,output c_out);
wire [2:0] c_0;
full_adder a0(.a(a[0]),.b(b[0]),.cin(c_in),.s(s[0]),.cout(c_0[0]));
full_adder a1(.a(a[1]),.b(b[1]),.cin(c_0[0]),.s(s[1]),.cout(c_0[1]));
full_adder a2(.a(a[2]),.b(b[2]),.cin(c_0[1]),.s(s[2]),.cout(c_0[2]));
full_adder a3(.a(a[3]),.b(b[3]),.cin(c_0[2]),.s(s[3]),.cout(c_out));
endmodule
module full_adder(input a,b,cin,output s,cout);
assign s=a^b^cin;
assign cout=(a&b) | (cin&(a^b));
endmodule
