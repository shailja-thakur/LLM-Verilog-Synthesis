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
always @(posedge clk) 
begin 
	if (reset) 
	begin 
	// case statement to assign the counter to the reset value 
	// when reset is high 
	q <= 4'b0000; 
	end 
	else if(q == 4'd12) 
	// if the counter value is 12, reset the counter 
	// to 1 
	begin 
	q <= 4'b0000; 
	end 
	else 
	// else, increment the counter value 
	begin 
	q <= q + 4'b0001; 
	end 
	end 

endmodule
