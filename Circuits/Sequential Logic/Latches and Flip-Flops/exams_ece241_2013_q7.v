module top_module (
    input clk,
    input j,
    input k,
    output Q); 

    always@(posedge clk) begin
        if (j&k) Q <= ~Q;
        else if (j|k) Q <= j;
        else Q <= Q;
    end

endmodule
