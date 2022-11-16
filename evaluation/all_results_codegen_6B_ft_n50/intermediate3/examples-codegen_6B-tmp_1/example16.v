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
always @(negedge clk, q[0] or posedge reset )
begin 
if(reset )
r_reg <= 5'b00001;
else
	r_reg <= r_next;
end 
// shift every successive bit to right by 1
assign r_next = {r_reg[3], r_reg[2], r_reg[1], r_reg[0], 1'b0};
assign feedback_value = r_reg[2] ^ r_reg[4]; 
always @ (posedge clk)
	begin
if(feedback_value )
	q[0] = r_reg[4]; 
else 
	q[0] = ~(r_reg[4]); 
	// every 5ns we shift the registered value to the right by 1
	// so if it doesnt reach the 5nsend
endmodule