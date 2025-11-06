module jk_flipflop(
    input J,
    input K,
    input clk,
    output reg Q,
    output nQ
);

    // Initialize Q
    initial Q = 0;

    // JK flip-flop behavior
    always @(posedge clk) begin
        case ({J, K})
            2'b00: Q <= Q;      // Hold
            2'b01: Q <= 0;      // Reset
            2'b10: Q <= 1;      // Set
            2'b11: Q <= ~Q;     // Toggle
        endcase
    end

    // Continuous assignment for complement output
    assign nQ = ~Q;

endmodule