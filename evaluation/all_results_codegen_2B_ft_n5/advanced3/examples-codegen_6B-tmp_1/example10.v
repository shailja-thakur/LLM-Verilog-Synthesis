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

    always @(posedge clk)
    begin
        int temp = x;
        select case (temp)
            case S1:
                    next_state=IDLE;
                    break;
            case S10:
                next_state=S101;
                break;
            case S101:
                next_state=IDLE;
                break;
        endcase
    end


    always @(posedge clk)
    begin
        if (next_state==IDLE)
        {
                if (present_state==S1) {
                       // only one at a time (presence of 1 for S1, x is logic 1) 
                        pr_monitor(S1);
                        z = 1;
                        present_state=S10;
                        next_state=S101;
                }

                else if (present_state==S101endmodule