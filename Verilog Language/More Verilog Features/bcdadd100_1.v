module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [100:0]c;

    bcd_fadd fadd1(a[3:0],b[3:0],cin,c[0],sum[3:0]);

    assign cout = c[400-4];

    generate
        genvar i;
        for(i = 4;i < 400; i+=4) begin:BCDADD
            bcd_fadd fadd(a[i+3:i],b[i+3:i],c[i-4],c[i],sum[i+3:i]);
        end
    endgenerate

endmodule
