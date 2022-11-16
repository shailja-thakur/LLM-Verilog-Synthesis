// Design a Moore state machine with two states 0 and 1, one input in, and one output out. Reset state is 0.
module simple_fsm(clk, reset, in, out);
input clk;
input reset;
input in;
output out;
wire out;
reg present_state, next_state;
// In state 0, if in=1, stay in state 0. In state 0, if in=0, go to state 1
// In state 1, if in=1, stay in state 1. In state 1, if in=0, go to state 0
// out=1 in state 0 and out=0 in state 1
reg out_r;

initial begin
	present_state <= #0 0;
	out_r <= #0 1;
end

always @(posedge clk) begin
	if (reset)	
	begin
	next_state <= #0 0;
	end 
	begin
	else 
	begin
	if (present_state == 0 and in == 1'b0)
	begin
	next_state <= #0 1;
	end 
	else if (present_state == 0 and in ==1'b1)
	begin
	next_state <= #0 0;
	end
	else if (present_state == 1 and in==1'b0)
	begin
	next_state <= #0 0;
	end 
	else if (present_state == 1 and in==1'b1)
	beginend
end
end
end
endmodule