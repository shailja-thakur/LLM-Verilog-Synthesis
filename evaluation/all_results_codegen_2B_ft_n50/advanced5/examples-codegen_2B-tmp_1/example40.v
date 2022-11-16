// This is an FSM 
module abro(
input clk,
input reset,
input a,
input b,
output z 
);
parameter IDLE = 0, SA = 1, SB = 2, SAB = 3;
reg [1:0] cur_state,next_state;
// Update state or reset on every clock edge.
// Output z is asserted 1 when the current state is SAB.
// Nest state generation logic:
// if input a and b both are high, state changes to SAB. 
// if input a is high and b is low, state transitions to IDLE. 
always@(posedge clk or reset)
if(reset) cur_state <= IDLE;
else cur_state <= next_state;
// Enable latch to next_state on each posedge of clk.
// Combinational next_state logic.
always@(*)
case(cur_state)
IDLE:
if((a)and(b)) next_state <= SA;
else if((a)or(b)) next_state <= SB;
else next_state <= IDLE;
SA:
if((a)) next_state <= SAB;
else next_state <= SA;
SB:
if((b)) next_state <= SAB;
else next_state <= IDLE;
default: next_state <= IDLE;
endcase
// Output logic
assignendmodule