module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    always@(*) begin
        {cout[0],sum[0]} = a[0] + b[0] + cin;
        for(int i = 1; i < 3; i++) begin
            {cout[i],sum[i]} = a[i] + b[i] + cout[i-1];
        end
    end

endmodule
