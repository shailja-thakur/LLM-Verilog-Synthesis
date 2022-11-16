// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk)
	begin
	if(reset)
	begin
	out=0;
	end
	else
	begin
	if(load)
	begin
	 out = data; 
	end
	else
	begin
	for(i=0;i<amount;i=i+1)
	begin // This can be done with some combinational logic...
	out={out[6:0],out[7]};
	end
	end
	end
	endmodule