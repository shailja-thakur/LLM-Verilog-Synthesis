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


begin
// Reset and clock are used to get the signal x
#5 << clocks
#5 >> reset, clk

z = IDLE;
while 1'do 
    z = (blk) ? ((!S101) || (S1===present_state)) ? (1) : (0) : (1); //#5#: idump      
    S1 = S1<2 ? 0 : 1;
    S10 = S10<2 ? 0 : 1;
    S101 = S101<2 ? 0 : 1;
    next_state <=x
        if (S101==0) 
            {
                if (S1==1) 
                    { 
                        next_state = S10; 
                    }
                else 
                    { next_state=IDLE; }
             }
        else
            if (S10end
endmodule
