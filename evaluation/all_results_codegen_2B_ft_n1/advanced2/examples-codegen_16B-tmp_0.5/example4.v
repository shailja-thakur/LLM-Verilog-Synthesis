// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
begin
	if (reset)
	begin
	//	q <= 4'b0; 
	end
	else
	begin
	//	q <= (slowena && q < 9)? q + 1'b1 : 4'b0; 
	end
end
endmodule
