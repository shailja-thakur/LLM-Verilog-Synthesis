// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or sel )
begin
	case(sel)
	1'b0: pos=2'b00;	// priority 0
	1'b1: pos=2'b11;	// priority 7
	endcase
end
endmodule