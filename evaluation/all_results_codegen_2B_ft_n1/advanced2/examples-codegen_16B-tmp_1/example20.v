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
if (reset==1); // If reset is high, then set the count slow down to 0.
 else begin
if (slowena == 1) begin
if (q != 9) begin
q = q +1;
end 
if (q == 9) begin
q = 0;
end 
end
end
end
endmodule
