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
//
// Note that the counter is only enabled when q is 1 or 12
always@(posedge clk)
 if(reset)
	q <= 1;
 else if(q == 12)
	q <= 1;
 else if(q == 0)
	q <= 1;
 else
	q <= q + 1;
endmodule
