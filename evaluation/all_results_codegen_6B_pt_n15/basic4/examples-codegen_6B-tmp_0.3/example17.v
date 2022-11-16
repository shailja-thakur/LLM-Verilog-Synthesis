// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    out <= 0;
  end
  else begin
    out <= sel ? a : b;
  end
end

// Testbench
#include "test_mux.h"

int
main(
  void
)
{
  mux_test();

  return 0;
}
endmodule