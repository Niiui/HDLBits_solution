module top_module ( input clk, input d, output q );

    wire d2d,d2d2;

    my_dff dff1(.clk(clk),.d(d),.q(d2d));

    my_dff dff2(.clk(clk),.d(d2d),.q(d2d2));

    my_dff dff3(.clk(clk),.d(d2d2),.q(q));

endmodule
