`timescale 1ns / 1ps

module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);
    wire [7:0] notA;
    wire [6:0] carry;

    assign notA = ~A;

    // Add 1 using chained full adders
    full_adder FA0 (.A(notA[0]), .B(1'b1),   .Cin(1'b0),    .Sum(Y[0]), .Cout(carry[0]));
    full_adder FA1 (.A(notA[1]), .B(1'b0),   .Cin(carry[0]), .Sum(Y[1]), .Cout(carry[1]));
    full_adder FA2 (.A(notA[2]), .B(1'b0),   .Cin(carry[1]), .Sum(Y[2]), .Cout(carry[2]));
    full_adder FA3 (.A(notA[3]), .B(1'b0),   .Cin(carry[2]), .Sum(Y[3]), .Cout(carry[3]));
    full_adder FA4 (.A(notA[4]), .B(1'b0),   .Cin(carry[3]), .Sum(Y[4]), .Cout(carry[4]));
    full_adder FA5 (.A(notA[5]), .B(1'b0),   .Cin(carry[4]), .Sum(Y[5]), .Cout(carry[5]));
    full_adder FA6 (.A(notA[6]), .B(1'b0),   .Cin(carry[5]), .Sum(Y[6]), .Cout(carry[6]));
    full_adder FA7 (.A(notA[7]), .B(1'b0),   .Cin(carry[6]), .Sum(Y[7]), .Cout(/* ignored */));
endmodule