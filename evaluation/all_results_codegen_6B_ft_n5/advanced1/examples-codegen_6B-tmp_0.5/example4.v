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



// the output overflow is the most significant bit of the output s
assign overflow = s[7];

// add a and b
// extract the most significant bits of a and b and add them to the most significant bits of s
assign s[7:1] = a[6:0]+b[6:0];

// check if the most significant bit of s is high
assign s[0] = (s[7]&s[6])|(s[7]&s[5])|(s[6]&s[5]);

endmodule