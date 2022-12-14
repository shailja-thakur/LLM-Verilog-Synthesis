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
// Detect rising edge of input signal
assign rising_edge = (in & ~present_state);
// Detect falling edge of input signal
assign falling_edge = (in & present_state);
// State changes on rising edge
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	present_state <= 0;
	end
	else
	begin
	present_state <= next_state;
	end
end
// State changes on falling edge
always @(posedge clk or posedge reset)
begin
	if (reset)
	begin
	next_state <= 0;
	end
	else
	begin
	next_state <= next_state;
	end
end
// Output logic
assign out = (present_state == 1) & (next_state == 1);
endmodule
