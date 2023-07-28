module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [4:0] c;
    assign c[0] = cin;

    bcd_fadd fadd[3:0] (a, b,c[3:0], c[4:1], sum);
    assign cout = c[4];

endmodule
