// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// if slowena is high and q is not 9, skip the ena input.
// if q is 9, skip the ena input.
// if slowena is low, skip the ena input.

always @(posedge clk or negedge reset) begin
    if (reset)
        q <= 0;
    else if (slowena && q != 9)
        q <= q + 1;
    else if (q == 9)
        ;
    else if (slowena == 0)
        q <= q + 1;
    else
        q <= q;
end

endmodule