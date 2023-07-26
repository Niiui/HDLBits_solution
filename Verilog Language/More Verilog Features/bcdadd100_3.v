module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0]c;

    bcd_fadd fadd1(a[3:0],b[3:0],cin,c[0],sum[3:0]);

    bcd_fadd fadd[98:0](
        a[399:4],b[399:4],c[98:0],c[99:1],sum[399:4]);

    assign cout = c[99];

endmodule
