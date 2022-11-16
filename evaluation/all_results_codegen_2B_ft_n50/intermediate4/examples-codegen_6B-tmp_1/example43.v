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
always @ (posedge clk or posedge reset)
	parameter A=0, B=1; 
always @ (present_state, in)begin 
	case(present_state) 
	A: if(in) next_state = A; else next_state = B;
	B: if(in) next_state = A; else next_state = B;
	endcase
	end
always @ (present_state, in)begin 	
	case(present_state) 
	A: if(in) out = 1; else out = 0;
	B: if(in) out = 0; else out = 1;
	endcase
	end
endmodule