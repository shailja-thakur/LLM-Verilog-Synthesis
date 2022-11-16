// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
// This only works for q < 13
// Note that if q = 13, clk is not asserted on the positive edge of the clock
always @(posedge clk or posedge reset) begin
    if (reset == 0) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end
// The output logic is the same as the case above
// This only works for q < 13
always @(posedge clk or posedge reset) begin
    if (reset == 0) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;
end

// This is a counter that counts from 1 to 12
module counter_2( 
    input clk,
    input reset,
    output reg [2:0] q
); 
// update q on theendmodule