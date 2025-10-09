`timescale 1ns / 1ps

module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum
);
    wire c0, c1, c2, c3;

    // Cascade four full adders (from last lab)
    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(Sum[0]), .Cout(c0));
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(c0),    .Sum(Sum[1]), .Cout(c1));
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(c1),    .Sum(Sum[2]), .Cout(c2));
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(c2),    .Sum(Sum[3]), .Cout(c3));
endmodule