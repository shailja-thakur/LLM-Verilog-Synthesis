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
initial begin
    q <= 1;
    clk <= clk;
    q <= (reset ? 1 : (q == 12 ? 1 : (q + 1)));
end

// This is a counter that counts from 0 to 10
module counter_10( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 10, assign q to 1
// else, increment q by 1 
initial begin
    q <= 1;
    clk <= clk;
    q <= (reset ? 1 : (q == 10 ? 1 : (q + 1)));
end

// This is a counter that counts from 0 to 9
module counter_9( 
    input clk,
    endmodule