// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


wire [7:0] b_signed; // b is treated as signed and unsigned

assign b_signed = {b[6:0], b[7]}; // b is treated as signed and unsigned

// bitwise xor of a and b is used in the xor of the carry that is output

assign s = {a[6:0], a[7]^b_signed[6:0], c[0]}; 

// The carry is the output of the xor of the most significant bit of a and b.

assign c = a[7]^b_signed[7]; 

assign overflow = c^s[7]; // xor of the most significant bit of c and s is the overflow.

endmodule
