module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

    wire c;
    wire [15:0]s1,s2;
    add16 a1(a[15:0],b[15:0],0,s1,c);
    add16 a2(a[31:16],b[31:16],c,s2,);
    assign sum = {s2,s1};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    wire [1:0]tmp;
    assign tmp = a + b + cin;
    assign {cout,sum} = tmp;

endmodule
