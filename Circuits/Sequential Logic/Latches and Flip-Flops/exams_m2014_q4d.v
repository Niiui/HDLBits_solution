module top_module (
    input clk,
    input in, 
    output out);

    wire d,q;

    always@(posedge clk) begin
        q <= d;
    end
 
    assign out = q;
    assign d = in^q;

endmodule
