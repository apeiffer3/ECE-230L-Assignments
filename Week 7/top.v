`timescale 1ns / 1ps

module top(
    input [9:0] sw,
    output [13:0] led
);
    // --- Half Subtractor (1-bit) ---
    half_sub HS (
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    );

    // --- Ones’ Complement (4-bit adder) ---
    ones_compliment OC (
        .A(sw[5:2]),
        .B(sw[9:6]),
        .Sum(led[5:2])
    );

    // --- Twos’ Complement Converter (8-bit) ---
    twos_compliment TC (
        .A(sw[9:2]),
        .Y(led[13:6])
    );
endmodule