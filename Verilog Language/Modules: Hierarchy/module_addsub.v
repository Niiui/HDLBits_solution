module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0]bb;

    wire [15:0]s1,s2;
    wire c;
    assign bb = b^{32{sub}};

    add16 a1(a[15:0],bb[15:0],sub,s1,c);
    add16 a2(a[31:16],bb[31:16],c,s2,);

    assign sum = {s2,s1};

endmodule
