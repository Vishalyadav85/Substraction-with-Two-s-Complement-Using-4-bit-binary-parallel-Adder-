`timescale 1ns / 1ps

module result(input [3:0]b,output [3:0]x);
assign x[0]=b[0]^1;
assign x[1]=b[1]^1;
assign x[2]=b[2]^1;
assign x[3]=b[3]^1;
endmodule