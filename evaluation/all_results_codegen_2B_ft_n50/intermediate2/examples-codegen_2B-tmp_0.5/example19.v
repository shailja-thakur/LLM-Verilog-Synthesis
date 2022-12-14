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
case(reset)
1'b1: q <= 4'b0001;
1'b0: q <= 4'b1111;
default: 
begin 
if(q == 4'b1210) q <= 4'b0001;
else q <= q + 1;
end
endcase
end
endmodule
