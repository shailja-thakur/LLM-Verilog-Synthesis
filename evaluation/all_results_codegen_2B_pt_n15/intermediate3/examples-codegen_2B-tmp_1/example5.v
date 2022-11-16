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
xTop[5:0] @[] (@[] q) xTop;
task main ()
{
    r_reg <- 1;
    r_next <- 1;
    feedback_value <- (clk ^ r_reg) & 31;

    for (i=4 downto 1)
    {
        r_reg <- r_next;
        r_next := r_reg xor (const1[(clk^reset^r_reg)&5]<<bit(i));
        CLK <- const1[(feedback_value>>(i-4))&3]
    }
}

task main ()
{
    repeat
    {
        r_reg (q) <= r_next (q);
        r_reg (r_next) := r_reg;
        feedback_value (q) <= bit5(r_reg);endmodule