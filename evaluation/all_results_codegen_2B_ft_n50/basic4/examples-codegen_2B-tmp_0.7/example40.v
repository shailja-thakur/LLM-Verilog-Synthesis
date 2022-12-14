// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// each input must have a unique ID.

reg [4:0] out;
always@(a or b or sel)
begin
	
	if(sel)
	begin
	out = b;
	end
	else
	begin
	out = a;
	end
end
endmodule
