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
// if input a and b both are low, state changes to SB.
// if input a is set and some other conditions are met, state changes to SA.
// if input b is set and input a is not set, state changes to SB.
always @ (cur_state or a or b) 
begin
case(cur_state)
IDLE: if(a & b) next_state = SA; else next_state = SB;
SA: if(a & b) next_state = SA; else next_state = SAB;
SB: if(a & b) next_state = SB; else next_state = SAB;
SAB: if(a & b) next_state = SAB; else next_state = SA;
default: next_state = IDLE;
endcase
end
// State machine logic including reset and set logice
always @ (posedgeendmodule
