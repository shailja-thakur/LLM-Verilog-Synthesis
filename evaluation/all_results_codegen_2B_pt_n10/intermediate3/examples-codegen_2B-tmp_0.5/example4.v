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

initial begin
    r_reg = 1;
    r_next = 1;
    feedback_value = 0;
    q = 0;
end

// on clock edge increment r_reg
initial begin
    if (clk == '0') r_reg = r_reg + 1;
end

// on reset decrement r_reg
initial begin
    if (reset == '0') r_reg = r_reg - 1;
end

// on feedback edge increment r_next
initial begin
    if (feedback_value == '1') r_next = r_next + 1;
end

// on reset decrement r_next
initial begin
    if (feedback_value == '0') r_next = r_next - 1;
end

// assign feedback concatenated with 4 most significant bits of r_reg to r_nextendmodule