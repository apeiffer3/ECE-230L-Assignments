`timescale  1 ps / 1 ps
module d_flipflop(
    input D,
    input clk,
    input rst,
    output reg Q,
    output reg nQ
);
    initial begin
        Q = 0;
        nQ = 1;
    end
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;
            nQ <= 1;
        end else begin
            Q <= D;
            nQ <= ~D;
        end
    end
endmodule