// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b; //Bitwise XOR
assign cout = a & b; //Bitwise AND
endmodule
