// This is a finite state machine that recognizes the sequence 101 on the input signal x. 
module adv_fsm(
input clk,
input reset,
input x,
output z ); 
reg [1:0] present_state, next_state;
parameter IDLE=0, S1=1, S10=2, S101=3;
// output signal z is asserted to 1 when present_state is S101 
// present_state is reset to IDLE when rset is high
// otherwise it is assigned next state
// if present_state is IDLE, next_state is assigned S1 if x is 1, otherwise next_state stays at IDLE
// if present_state is S1, next_state is assigned S10 if x is 0, otherwise next_state stays at IDLE 
// if present_state is S10, next_state is assigned S101 if x is 1, otherwise next_state stays at IDLE 
// if present_state is S101, next_state is assigned IDLE


// FSM_async_reset asyncrhonous reset implementation 
always@ (reset)
case (reset)
1'b0: present_state <= IDLE;
1'b1: present_state <= next_state
endcase


// FSM_async_reset functionally generates 1 clock delay when reset is asserted
always@(posedge clk)
case(present_state)
IDLE: 
begin
if(x) 
begin
next_state <= S1;
end
else
begin
next_state <= IDLE;
end
end
S1:
begin
if(x)
begin
next_state <= S10;
end
else
begin
next_state <= IDLE;
end
end
S10:
begin
if(x)
begin
next_state <= S101;
end
else
begin
end
endmodule