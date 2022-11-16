// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	out<=0;
	end
	else if (load)
	begin
	out<=data;
	end
	else if (amount==3'b110)//rotate right
	begin
	out<={out[6:0],out[7]};
	end
	else if (amount==3'b101) //shift left
	begin
	out<={out[5:0],out[6]};
	end
	else if (amount==3'b100) //shift right
	begin
	out<={out[3:0],out[4]};
	end
	else if (amount==3'b011) //shift left
	begin
	out<={out[2:0],out[3]};
end
end
endmodule