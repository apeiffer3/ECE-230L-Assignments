`timescale  1 ps / 1 ps

module top(
    input btnC,   // clock input
    input btnU,   // reset input
    output [6:0] led
);
    wire [2:0] rc_state;
    wire [2:0] mc_state;
    wire mc_out;

    ripple_counter RC (
        .clk(btnC),
        .rst(btnU),
        .q(rc_state)
    );

    modulo_counter MC (
        .clk(btnC),
        .rst(btnU),
        .count(mc_state),
        .out(mc_out)
    );

    // LED mapping
    assign led = {mc_out, mc_state, rc_state};

endmodule