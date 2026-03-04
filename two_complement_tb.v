`timescale 1ns / 1ps

module two_complement_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]ans;
wire cout;
substraction_2complement dut(.a(a),.b(b),.cin(cin),.ans(ans),.cout(cout));
initial begin
a=4'b1111;b=4'b0011;cin=1'b1;
#10
a=4'b1100;b=4'b1001;cin=1'b1;
#10
a=4'b1111;b=4'b1111;cin=1'b1;
#10
a=4'b0011;b=4'b1111;cin=1'b1;
#10
$stop;
end
endmodule
