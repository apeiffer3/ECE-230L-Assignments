module demux1to4_4bit(
    input [3:0] In,
    input [1:0] Sel,
    input En,
    output [3:0] local_lib,
    output [3:0] FireDept,
    output [3:0] School,
    output [3:0] RibShack
);

    // 1-to-4 DEMUX using ternary assignments
    assign local_lib  = (En && (Sel == 2'b00)) ? In : 4'b0000;
    assign FireDept   = (En && (Sel == 2'b01)) ? In : 4'b0000;
    assign School     = (En && (Sel == 2'b10)) ? In : 4'b0000;
    assign RibShack   = (En && (Sel == 2'b11)) ? In : 4'b0000;

endmodule