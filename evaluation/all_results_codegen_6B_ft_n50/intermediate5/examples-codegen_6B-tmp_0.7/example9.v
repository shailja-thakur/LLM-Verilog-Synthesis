// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits

always @(posedge clk)
	begin
	if (reset)
	out <= 0;
	else
	begin
	if (load)
	out <= data;
	else 
	begin
	if(amount == 3'b110 || amount == 3'b101)
	out = {out[6:0],out[7]};
	else if(amount == 3'b111 || amount == 3'b100)
	out = {out[5:0],out[7:6]};
	else if(amount == 3'b110 || amount == 3'b100)
	out = {out[4:0],out[7:5]};
	else if(amount == 3'b111 || amount == 3'b101)
	out = {out[3:0],out[7:4]};
	else if(amountend
end
end
endmodule