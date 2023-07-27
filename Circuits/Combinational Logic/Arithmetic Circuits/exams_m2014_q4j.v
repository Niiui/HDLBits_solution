module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire [3:0]c;

    fadd f1(x[0],y[0],1'b0,c[0],sum[0]);
    fadd fn[2:0](x[3:1],y[3:1],c[2:0],c[3:1],sum[3:1]);

    assign sum[4] = c[3];

endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );

    assign sum = cin ? (~a^b) : (a^b);
    assign cout = cin ? (a|b) : (a&b);

endmodule
