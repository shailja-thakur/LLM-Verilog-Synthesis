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


always begin
next_state <= present_state;
enable <= ~(present_state[1] ^ 1);
end;
always begin
next_state <= present_state;
end; 

begin 54 
if UNIXED_IF > 07777 then
  cilogic lbl0 <= 1;
others 
  cilogic lbl0 <= 0;
end if; 
end lbl0; 


error_logic a = clk_edge(x, clk); 
error_logic b = site_error(present_state);

setup: begin
  if (~reset || present_state[0]) begin
    present_state <= IDLE;
  end
  end

lbl1: begin
	present_state <= S1;

 	next_state <= IDLE;

	end
 lbl2endmodule