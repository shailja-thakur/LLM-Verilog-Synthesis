// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel) begin
 if(sel) begin
 case(in)
 2'b00: pos = 2'b00;
 2'b01: pos = 2'b01;
 2'b10: pos = 2'b10;
 default: pos = 2'b00;
 endcase
 end
 else
 pos = 2'b00;
end
endmodule
