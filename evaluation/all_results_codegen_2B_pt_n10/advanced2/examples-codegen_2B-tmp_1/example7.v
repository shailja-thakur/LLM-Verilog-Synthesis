// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) 
begin:
    if (slowena == 1'b0) begin 
        q <= 0;
    end
    if (slowena == 1'b1) begin
        if (reset == 1'b1) q <= q'{0};
        else if (ena == 1'b1) q <= q{+1} else q <= q;
    end
end

void main()
{
      assign ql = q;
      assign qm = q + 1;
      assign qh = q + 2;
      
      pause(1'000);
        
        
} 


endmodule
