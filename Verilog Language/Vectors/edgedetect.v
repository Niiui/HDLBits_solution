module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] r_in;
    always@(posedge clk) begin
        r_in <= in;
        pedge = ~r_in & in;
    end

endmodule
