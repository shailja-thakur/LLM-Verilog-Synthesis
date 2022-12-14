// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign and_gate.out( 
        and_gate.a( a ), 
        and_gate.b( b ), 
        and_gate.out 
    );

endmodule
