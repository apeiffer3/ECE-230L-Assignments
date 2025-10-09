`timescale 1ns / 1ps

module half_sub(
    input A,
    input B,
    output Y,
    output Borrow
);
    // Difference
    assign Y = A ^ B;
    // Borrow = when A = 0 and B = 1
    assign Borrow = (~A) & B;
endmodule