module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0]r1,r2;
    assign r1 = (a < b) ? a : b;
    assign r2 = (c < d) ? c : d;
    assign min = (r1 < r2) ? r1 : r2;

endmodule
