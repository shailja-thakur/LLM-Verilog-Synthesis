// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


always @ (posedge clk)
begin
if (load == 1'b1) // when load is high, assign data[63:0] to shift register q.
q <= data; 
else if(ena == 1'b1) // if ena is high, shift q.
begin
if (amount == 2'b00) // if amount is 0, left shift by 1 bit.
q <= {q[62:1]}; 
else if (amount == 2'b01) // if amount is 1, left shift by 8 bits.
q <= {q[55:8], q[7:0]};
else if (amount == 2'b10) // if amount is 1, right shift by 1 bit.
q <= {q[0], q[63:1]};
else if (amount == 2'b11) // if amount is 1, right shift byend
end
endmodule