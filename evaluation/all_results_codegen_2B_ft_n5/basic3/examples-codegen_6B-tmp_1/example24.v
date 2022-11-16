// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter sel = 1'b1;
//positional assignment
always @(*) 
begin 
	if (sel[1])
	begin 
 	case(sel[2:0]) 
	3'b000: pos=2'b00; 
	3'b001: pos=2'b01;
	3'b010: pos=2'b10;
	3'b011: pos=2'b11;
	default: pos=2'bxx;
	endcase
	end	
end
endmodule