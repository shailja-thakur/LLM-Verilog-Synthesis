// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel)
begin
	if (sel) begin
	case(in)
	//0
	3'b000: pos = 2'b00;
	//1
	3'b001: pos = 2'b01;
	//2
	3'b010: pos = 2'b01;
	//3
	3'b011: pos = 2'b10;
	//4
	3'b100: pos = 2'b10;
	//5
	3'b101: pos = 2'b00;
	//6
	3'b110: pos = 2'b01;
	//7
	3'b111: pos = 2'b10;
	//8
	3'b000: pos = 2'b01;
	//9
	3'b001: pos = 2'end
end
endmodule
