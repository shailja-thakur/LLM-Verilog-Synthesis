// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or (reset == 1'b1 && !slowena))
    if (reset)
        q <= 0;
    else if (slowena)
        if (q < 9)
            q <= q + 1;

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only decrement the output q if the ena input is high and q is not 0.

always @(negedge clk or (reset == 1'b1 && !slowena))
    if (reset)
        q <= 9;
    else if (slowena)
        if (q > 0)
            q <= q - 1;

// If ena is high and q is not 9 or 0, output q.

always @(posedge clk or (slowena && !resetendmodule
