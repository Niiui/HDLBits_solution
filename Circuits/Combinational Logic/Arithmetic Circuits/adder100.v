module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );

    //assign {cout, sum} = a + b + cin;
    wire [99:0]c;

    fadd f1(a[0],b[0],cin,c[0],sum[0]);
    fadd fn[98:0](a[99:1],b[99:1],c[98:0],c[99:1],sum[99:1]);

    assign cout = c[99];

endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );

    assign sum = cin ? (~a^b) : (a^b);
    assign cout = cin ? (a|b) : (a&b);

endmodule
