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
if(reset)
q <= 4'b0000;
else
case(q)
4'b0000: q <= 4'b0001;
4'b0001: q <= 4'b1111;
4'b1111: q <= 4'b0101;
4'b0101: q <= 4'b1011;
4'b1011: q <= 4'b1101;
4'b1101: q <= 4'b1001;
4'b1001: q <= 4'b1100;
4'b1100: q <= 4'b1000;
4'b1000: q <= 4'b0000;
default: q <= q + 4'b0001;
endcase
end
endmodule
