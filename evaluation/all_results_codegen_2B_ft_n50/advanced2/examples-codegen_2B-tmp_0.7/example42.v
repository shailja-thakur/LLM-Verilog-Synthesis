// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The counter then rolls over to 0 and q is incremented.
//
always@(posedge clk)
begin
	if(reset)
	begin
	q = 4'd0;
	end
	else if(slowena)
	begin
	if(q == 4'd9)
	q = 4'd0;
	else
	q = q + 1;
	end
end
endmodule
