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
case (q) 
4'b0000 : begin
if (reset)
q = 4'b0000;
else
q = 4'b0001;
end
4'b0001 : begin
if (reset || q == 4'b1111)
q = 4'b0000;
else
q = 4'b0010;
end
4'b0010 : begin
if (reset || q == 4'b1111)
q = 4'b0000;
else
q = 4'b0011;
end
4'b0011 : begin
if (reset || q == 4'b1111)
q = 4'b0000;
else
q = 4'b0100;
end
4'b0100 : begin
if (reset || q == 4'b1111)
q = 4'b0000;
else
q =end
end
endmodule
