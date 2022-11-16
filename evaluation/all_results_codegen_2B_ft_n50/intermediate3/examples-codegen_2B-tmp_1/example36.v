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
always @ (posedge clk, posedge reset) 
begin
if (reset == 1'b1) 
begin
r_reg = q[4:0];
end
else 
begin
r_reg = r_next;

end
end
assign q = r_reg;
//first atan
assign feedback_value = {{3'h0},q[2:0]^q};
generate
genvar i;
for(i=0;i<4;i=i+1)
begin
//assign HEX0[i] = ( (r_reg >> i)& 1) + (r_reg >> i) + overflow + {3'h0, r_reg[i]};
end
endgenerate
assign overflow = (r_reg[3:0] & r_reg[3:1])|(endmodule