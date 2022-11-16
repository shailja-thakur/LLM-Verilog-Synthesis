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
// out=1 in state 1 and out=0 in state 0
parameter State0 = 0;
parameter State1 = 1;
// Register present state, next state
always @(posedge clk or posedge reset)
	if(reset)
	begin
	present_state <= State0;
	next_state <= State0;
	end
	else
	begin
	present_state <= next_state;
	end
// Output logic
assign out = (present_state == State1);
endmodule