// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
assign r_reg = feedback_value;
assign r_next = (r_reg ^ ((r_reg >> 2) & 1)) << 3 | (r_reg >> 4) & 0xF;
assign q = r_reg;
assign clk = clk & ~reset;
assign reset = reset & ~clk;

// Design a Galois LFSR with taps at bit positions 5 and 3
module lfsr2( 
    input clk,
    input reset,
    output [4:0] q
); 
// define the internal state registers
reg [4:0] r_reg;
reg [4:0] r_next;

// define the main state register
reg state;
// define the internal state registers
reg [4:0] s_reg;
reg [4:0] s_next;

endmodule