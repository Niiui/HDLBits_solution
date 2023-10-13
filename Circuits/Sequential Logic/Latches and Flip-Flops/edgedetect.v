module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    wire [7:0]in_r1;
    wire [7:0]in_r2;

    always@(posedge clk) begin
        in_r1 <= in;
        in_r2 <= in_r1;
    end

    assign pedge = ~in_r2 & in_r1;

endmodule
