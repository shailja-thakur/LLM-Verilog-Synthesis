// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always @ (posedge clk)
begin
if (reset)
	out <= 0;
else if (load)
	out <= data;
else begin
	out[7:amount] <= out[0:7-amount];
	out[0+amount:7] <= out[amount:7];
	end
end
endmodule
