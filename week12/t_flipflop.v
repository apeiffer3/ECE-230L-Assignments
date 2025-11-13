`timescale  1 ps / 1 ps

module t_flipflop(
    input T,
    input clk,
    output reg Q,
    output nQ
);

    // Initialize Q
    initial Q = 0;

    // T Flip-Flop behavior
    always @(posedge clk) begin
        if (T)
            Q <= ~Q;   // Toggle when T = 1
        else
            Q <= Q;    // Hold when T = 0
    end

    // Continuous assignment for inverted output
    assign nQ = ~Q;

endmodule