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

always @(present_state or in) begin
case(present_state)
0 : if(present_state==0)
		begin
			next_state=1;
			present_state=3;
			next_state [0]=1;
		end
	1 :
		begin
			next_state=2;
			present_state=3;
			next_state [0]=1;
		end
2 :
		begin
			if(in==1)
				begin
					next_state=3;
					present_state=1;
					next_state [0]=1;
				end
			else if(in==0)
				begin
		end
end
end
endmodule
