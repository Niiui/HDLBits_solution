module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    wire [7:0]in_r1;
    always@(posedge clk) begin
        in_r1 <= in;
        pedge <= ~in_r1 & in;
    end

endmodule
