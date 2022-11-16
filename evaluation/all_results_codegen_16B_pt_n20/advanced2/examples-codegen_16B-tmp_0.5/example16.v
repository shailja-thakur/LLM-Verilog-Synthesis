// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) begin
    if (reset) q <= 0;
    else if (ena) q <= q + 1;
end

// On the positive edge of the slow clock:
// if slowena is high, reset q to 0.
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowclk or negedge slowena) begin
    if (slowena) q <= 0;
    else if (ena) q <= q + 1;
end

// The output is q + 1, which is the number of decades since 0.

always @(posedge clk or negedge reset) begin
    q <= q + 1;
end

// The decade counter is enabled if ena is high and reset is low.

always @(posedendmodule