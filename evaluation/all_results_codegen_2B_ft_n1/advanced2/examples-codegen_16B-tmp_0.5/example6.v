// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge reset)
begin
	if (reset == 1'b0)
	begin
	// reset
	q <= 4'b0;
	end
	else
	begin
	if (slowena == 1'b1 && q != 4'd9)
	begin
	q <= q + 1'b1;
	end
	end
end

endmodule
