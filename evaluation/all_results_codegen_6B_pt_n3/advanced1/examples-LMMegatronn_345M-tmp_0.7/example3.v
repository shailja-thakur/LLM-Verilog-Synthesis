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


wire signed [7:0] s0 = a[0] * b[0];
wire signed [7:0] s1 = a[1] * b[1];
wire signed [7:0] s2 = a[2] * b[2];
wire signed [7:0] s3 = a[3] * b[3];
wire signed [7:0] s4 = a[4] * b[4];
wire signed [7:0] s5 = a[5] * b[5];
wire signed [7:0] s6 = a[6] * b[6];
wire signed [7:0] s7 = a[7] * b[7];

wire signed [8:0] s0_mul_input;
wire signed [8:0] s1_mul_input;
wire signed [8:0endmodule
