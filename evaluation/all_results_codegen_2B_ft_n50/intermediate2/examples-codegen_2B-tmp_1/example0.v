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
always@(posedge clk) 
 if(reset) begin
 // q = 1; 
 q <= 4'b1001; 
 end
 else if(q == 4'b1211) begin
 // q = 1;
 q <= 4'b1001; 
 end 
 else if(q == 4'b1211) begin
 // q = 1;
 q <= 4'b1001; 
 end 
 else begin
 // change to q = q + 1
 q <= q + 1; 
 end 
// always@(posedge clk) begin 
// if(reset) begin
// // assign q = 13; 
// q <= 4'b01101; 
// end
// else if (q == 4'b1011) begin
// // assign q = 13; 
// q <= 4'b01101; 
// end
// elseendmodule