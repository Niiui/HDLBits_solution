module top_module (input x, input y, output z);

    wire z1,z2;

    assign {z1,z2} = {(x ^ y) & x, ~(x ^ y)};
    assign z = (z1 | z2) ^ (z1 & z2);

endmodule
