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


assign overflow = (a[6:0][7]&b[6:0][7])&(s[6:0]^[7]);

// perform the add
wire [9:0] c = {a[6:0]+b[6:0],1'b0};

assign s = {c[7:0],c[6:0]};

endmodule
