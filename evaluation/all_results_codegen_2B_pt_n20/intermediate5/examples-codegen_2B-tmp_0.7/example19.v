// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (clk, reset, load, amount)
begin
  if (load)
    out <= data;
  else
    out <= data;
  if ((clk == 1) and (reset == 0))
    out <= (out << (amount+1)) & 0xFF;
  if ((clk == 1) and (reset == 1))
    out <= (out >> (amount+1)) & 0xFF;
end
endmodule
