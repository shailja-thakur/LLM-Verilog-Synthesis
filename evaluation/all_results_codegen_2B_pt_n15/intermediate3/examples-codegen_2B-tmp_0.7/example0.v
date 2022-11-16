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
always @(
    clk,
    reset
)
begin
    r_reg <= '10';
    r_next <= r_reg;
    feedback_value <= '1' & r_reg & reset & clk;
    q <= r_next;
end;

// design a 10-bit Galois LFSR with taps at bit positions 5 and 3
module lfsr_10( 
    input clk,
    input reset,
    output [7:0] q
); 
reg [7:0] r_reg;
wire [7:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 7 most significant bits of rendmodule