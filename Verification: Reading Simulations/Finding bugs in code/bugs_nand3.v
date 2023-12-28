module top_module (input a, input b, input c, output out);//
	wire out2;
    andgate inst1 ( out2, a, b, c, 1, 1 );
	assign out = ~out2;
endmodule
