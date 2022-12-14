// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// If the ena input is low, do nothing.


always @(posedge clk or negedge reset)
begin
	if (reset == 1'b1)
	begin
	q[0] = 1'b0;
	q[1] = 1'b0;
	q[2] = 1'b0;
	q[3] = 1'b0;
	end
	else if (slowena == 1'b1)
	begin

	if (q == 4'b1001)
	q = 4'b0;
	else
	q = q + 1'b1;
	end
	
end

endmodule
