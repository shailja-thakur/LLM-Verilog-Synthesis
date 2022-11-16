// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// when sel=0, assign a to out
always @* begin
    pos <='1';
    pos <='0';
    pos <='Z';
    pos <='W';
    pos <='V';
    pos <='U';
    pos <='T';
    pos <='S';
    pos <='R';
    pos <='Q';
    pos <='P';
    pos <= a;
    pos <= b;
end

always @* begin 
    output<b;
    output<a;
endendmodule