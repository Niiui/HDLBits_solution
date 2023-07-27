module top_module( 
    input a, b, cin,
    output cout, sum );

    assign sum = cin ? (~a^b) : (a^b);
    assign cout = cin ? (a|b) : (a&b);

endmodule
