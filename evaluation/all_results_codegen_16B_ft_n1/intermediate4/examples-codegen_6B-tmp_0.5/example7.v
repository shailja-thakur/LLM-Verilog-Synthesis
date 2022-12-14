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
assign out= present_state[1] & ~in;

// Net to connect instances of the two different states

parameter 
	state0 = 2'b00,
	state1 = 2'b01,
	state2 = 2'b10,
	state3 = 2'b11;

always @(posedge clk or posedge reset)
	if (reset)
	present_state <= state0;
	else 
	present_state <= next_state;
	
always @(present_state or in)
	case(present_state)
	state0: 
	if (in)
	next_state = state0;
	else
	next_state = state1;
	state1:
	if (in)
	next_state = state0;
	else
	next_state = state2;
endmodule
