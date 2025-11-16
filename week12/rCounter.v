`timescale  1 ps / 1 ps
module ripple_counter(
    input clk,
    input rst,
    output [2:0] q
);
    wire nQ0, nQ1, nQ2;
    // Each stage divides the previous clock by 2
    t_flipflop tff0 (.T(1'b1), .clk(clk),  .rst(rst), .Q(q[0]), .nQ(nQ0));
    t_flipflop tff1 (.T(1'b1), .clk(q[0]), .rst(rst), .Q(q[1]), .nQ(nQ1));
    t_flipflop tff2 (.T(1'b1), .clk(q[1]), .rst(rst), .Q(q[2]), .nQ(nQ2));
endmodule