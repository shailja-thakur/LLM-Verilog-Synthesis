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


wire [7:0] sum1;
wire [7:0] sum2;
wire overflow1;
wire overflow2;

// sum1 represents the sum of a and b
// sum2 represents the sum of a and b
// overflow represents the occurence of a signed overflow

assign sum1 = a + b;
assign sum2 = a + b;
assign overflow1 = (a[7] == b[7] && sum1[7] == ~sum2[7]);
assign overflow2 = (a[7] == ~b[7] && sum1[7] == sum2[7]);
assign overflow = overflow1 | overflow2;

// The output s is the sum of the two inputs
assign s = sum1 + sum2;

endmodule
