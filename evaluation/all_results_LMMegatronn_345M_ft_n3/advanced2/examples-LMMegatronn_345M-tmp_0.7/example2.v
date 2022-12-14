// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Which means "ena" set to the 
// input q and "enb" set to 1.

always @(posedge clk)
    if (reset == 1'b1)
        q <= 0;
    else if (slowena == 1'b1)
        q <= q + 1;

endmodule
