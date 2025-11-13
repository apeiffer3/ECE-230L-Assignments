`timescale  1 ps / 1 ps

module modulo_counter(
    input clk,
    input rst,
    output reg [2:0] count,
    output reg out
);
    wire [2:0] sum;
    wire [2:0] c;  // carry bits

    full_adder fa0 (.A(count[0]), .B(1'b1), .Cin(1'b0),   .Y(sum[0]), .Cout(c[0]));
    full_adder fa1 (.A(count[1]), .B(1'b0), .Cin(c[0]),   .Y(sum[1]), .Cout(c[1]));
    full_adder fa2 (.A(count[2]), .B(1'b0), .Cin(c[1]),   .Y(sum[2]), .Cout(c[2]));

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 3'b000;
            out <= 1'b0;
        end else begin
            if (count == 3'b101) begin // when count = 5 (decimal)
                count <= 3'b000;
                out <= ~out;  // toggle output
            end else begin
                count <= sum;
            end
        end
    end
endmodule