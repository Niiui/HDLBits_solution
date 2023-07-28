module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = ({a,b}=={c,d}) ? 1'b0 : ( {a,b}+{c,d}==2'b11 ? 1'b0 : 1'b1);

endmodule
