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
// next_state is the state that will be present after the clock cycle
// present_state is the state that is present right now
always @(posedge clk)
begin
if (reset)
present_state <= 0;
else
present_state <= next_state;
end
always @(present_state or in)
begin
case (present_state)
0:
begin
if (in)
next_state <= 1;
else
next_state <= 0;
end
1:
begin
if (in)
next_state <= 0;
else
next_state <= 1;
end
endcase
end
// Output logic
assign out = (present_state == 0)&&(in);
endmodule
