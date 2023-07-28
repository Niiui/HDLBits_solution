module top_module (
    input [4:1] x,
    output f
); 

    assign f = x[1] ? (x[2] ? x[3]&x[4] : ~x[4]) : (x[3] ? 1'b1 : (x==4'b0000 ? 1'b1 : 1'b0));

endmodule
