// This is an FSM
module abro(
input clk,
input reset,
input a,
input b,
output z );
parameter IDLE = 0,
SA = 1,
SB = 2,
SAB = 3;
reg [1:0] cur_state,next_state;
// The output z is high when 1 is received for signals a and b in any order.
// If cur_state is IDLE and a and b are both high, state changes to SAB
// If cur_state is IDLE, and a is high, state changes to SA
// If cur_state is IDLE, and b is high, state changes to SB
// If cur_state is SA, and b is high, state changes to SAB
// If cur_state is SB, and a is high, state changes to SAB
// If cur_state is SAB, state changes to IDLE
// z is assigned one when cur_state is SAB
reg [1:0] z;
always
begin
if (clk and reset) begin
z <= 0;
end else
if ((a or b)) begin
cur_state <= SB;
end else
cur_state <= IDLE;
// if cur_state is IDLE, and a and b are both high, and the rising edge of
// clk occurs, state changes to SA
if ((cur_state == IDLE) and (a == 1)) begin
next_state <= SA;
end else
if ((cur_state == IDLE) and (b == 1)) begin
next_state <= SB;
end else
next_state <= cur_state;
next_state <= IDLE;
if ((a and b)) begin
z <= ~z;
end else
z <= 0;
end
end
endmodule