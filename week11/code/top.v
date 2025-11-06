module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_flipflop dff(
        .D(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .nQ(led[1])
    );

    jk_flipflop jkff(
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .nQ(led[3])
    );

    t_flipflop tff(
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .nQ(led[5])
    );
endmodule