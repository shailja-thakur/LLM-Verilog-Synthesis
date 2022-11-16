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
// if input a and b are both low, state changes to IDLE. 
// if input a is high and input b is low, state changes to SA. 
always @(posedge clk, posedge reset)
if(reset)
cur_state <= IDLE;
else
cur_state <= next_state;
// Output logic:
always @(cur_state)
case(cur_state)
IDLE: begin
z = 1'b0;
end
SA: begin
z = 1'b0;
end
SB: begin
z = 1'b0;
end
SAB: begin
z = 1'b1;
end
default: begin
z = 1'b0;
end
endcase
// State transition logic:
always @(cur_state or a or b)
case(cur_state)
IDLE: begin
nextendmodule