module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //

    assign c_enable = enable;
    assign c_d = c_load ? 1'b1 : Q;
    assign c_load = (reset|(Q=='d12&&enable)) ? 1'b1 : 1'b0;
    count4 the_counter (clk, c_enable, c_load, c_d, Q);

endmodule
