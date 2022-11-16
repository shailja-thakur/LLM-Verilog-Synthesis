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
assign feedback_value = r_reg[2] ^ r_reg[4];
assign r_next = r_reg ^ {r_reg[0],feedback_value};
// define the initial state as all 1's
initial begin
r_reg <= 5'b11111;
end
// define the output state
assign q = r_reg;
// define the clock
always @ (posedge clk)
begin
if (reset)
begin
// upon reset set the output back to all 1's
r_reg <= 5'b11111;
// upon reset set the counter to all 1's
end
else
begin
// otherwise assign the next state
r_reg <= r_next;
// alternatively, assign the current state to the next state
// r_reg <= r_next;
end
end
endmodule