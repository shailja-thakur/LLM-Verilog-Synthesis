// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, then the output q is not incremented.

always @(posedge clk)
begin
	if (reset)
	begin
	q <= 0;
	end
	else if (slowena)
	begin
	if (q == 4'b1001)
	q <= 0;
	else
	q <= q + 1;
	end
end

endmodule