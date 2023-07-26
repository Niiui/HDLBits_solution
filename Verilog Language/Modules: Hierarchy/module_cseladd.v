module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire c1;
    wire [15:0]s1,s2,s3;
    add16 a1(a[15:0],b[15:0],0,s1,c1);
    add16 a2(a[31:16],b[31:16],0,s2,);
    add16 a3(a[31:16],b[31:16],1,s3,);

    always@(*)
        begin
            case(c1)
                1'b0:sum = {s2,s1};
                1'b1:sum = {s3,s1};
            endcase
        end

endmodule
