// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin

if (~reset) begin
	q <= 4'b0;
end

else begin
	if (slowena) begin
	if (q < 4'b1001) q <= q + 1;
	end
end
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, do not change the value of q, but set the output to 1 when q is 9.

always @(negedge clk) begin

if (~reset) begin
	q <= 4'b1001;
	end
	
else begin
	if (q == 4'b1001) q <= 4'b1;
	else q <= q;
end
end

endmodule
