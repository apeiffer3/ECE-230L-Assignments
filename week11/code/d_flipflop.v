module d_flipflop(
    input D,
    input clk,
    output reg Q,
    output reg nQ
);
    initial begin
        Q = 0;
        nQ = 1;
    end

    always @(posedge clk) begin
        Q <= D;
        nQ <= ~D;
    end
endmodule