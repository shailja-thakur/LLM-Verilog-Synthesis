// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b; // sum is a XOR of a and b
assign cout = a & b; // carry is a AND of a and b

endmodule
