// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out[0] = (!sel && a[0]) || (!sel && b[0]) ? 1'b1 : 1'b0;
assign out[1] = (!sel && a[1]) || (!sel && b[1]) ? 1'b1 : 1'b0;
assign out[2] = (!sel && a[2]) || (!sel && b[2]) ? 1'b1 : 1'b0;
assign out[3] = (!sel && a[3]) || (!sel && b[3]) ? 1'b1 : 1'b0;
assign out[4] = (!sel && a[4]) || (!sel && b[4]) ? 1'b1 : 1'b0;
endmodule
