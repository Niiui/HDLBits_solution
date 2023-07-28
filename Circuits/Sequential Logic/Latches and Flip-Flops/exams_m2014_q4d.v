module top_module (
    input clk,
    input in, 
    output out);

    reg d,q;//wire

    always@(posedge clk) begin
        q <= d;
    end
 
    assign out = q;
    assign d = in^q;

endmodule
