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
always @(posedge clk or negedge reset) begin
    if (reset) begin
        r_reg <= 0;
        q <= 0;
    end else begin
        r_next <= r_reg ^ feedback_value;
        q <= r_next;
    end
end

module lfsr_decoder(
    input clk,
    input reset,
    output [5:0] q,
    output [5:0] r
);
reg [5:0] r_reg;
wire [5:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 5 least significant bits of r_reg to r_endmodule