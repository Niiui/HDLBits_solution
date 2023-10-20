module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    reg [31:0] in_r;
    always@(posedge clk) begin
        in_r <= in;
        if(reset)
            out <= 'b0;
    	else begin
            out <= out | in_r & ~in;
        end
    end
    
endmodule
