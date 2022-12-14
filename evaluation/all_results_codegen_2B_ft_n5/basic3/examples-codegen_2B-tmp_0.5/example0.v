// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
	case(in)
	3'b000:
	begin
	pos = 2'bzzz;
	end
	3'b001:
	begin
	pos = 2'b000;
	end
	3'b010:
	begin
	pos = 2'b001;
	end
	3'b011:
	begin
	pos = 2'b010;
	end
	3'b100:
	begin
	pos = 2'b011;
	end
	3'b101:
	begin
	pos = 2'b100;
	end
	3'b110:
	begin
	pos = 2'b101;
	end
	3'b111:
	begin
	pos = 2'b110;
	end
	default: pos = 2'bzzzend
endmodule
