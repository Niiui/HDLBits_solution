module top_module(
    input a,
    input b,
    input c,
    output out  ); 

    assign out = a ? 1'b1 : b | c;

endmodule
