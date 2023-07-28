module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = a ? 1'b1 : ( ~b ? c : ( c|d ? 1'b0 : d ));
    //assign out = a ? 1'b1 : ( ~b ? c : 1'b0);

endmodule
