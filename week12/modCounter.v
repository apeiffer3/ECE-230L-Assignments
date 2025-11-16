`timescale  1 ps / 1 ps
module modulo_counter(
    input clk,
    input rst,
    output [2:0] state, // the current counter state
    output out          // the modulo counter output
);
    wire [2:0] Q;       // flip-flop outputs
    wire [2:0] sum;     // sum from full adder
    wire [2:0] carry;   // carry bits
    wire reset;         // combinatorial reset signal
    wire [2:0] next_state;
    
    assign state = Q;
    
    // Detect when counter = 5 (101b)
    assign reset = (Q == 3'b101);
    
    // Add 1 to Q using chained full adders
    full_adder fa0(.A(Q[0]), .B(1'b1), .Cin(1'b0), .Y(sum[0]), .Cout(carry[0]));
    full_adder fa1(.A(Q[1]), .B(1'b0), .Cin(carry[0]), .Y(sum[1]), .Cout(carry[1]));
    full_adder fa2(.A(Q[2]), .B(1'b0), .Cin(carry[1]), .Y(sum[2]), .Cout(carry[2]));
    
    // Mux to select between reset (000) and sum
    assign next_state = reset ? 3'b000 : sum;
    
    // Connect D flip-flops with rst input
    d_flipflop dff0(.D(next_state[0]), .clk(clk), .rst(rst), .Q(Q[0]), .nQ());
    d_flipflop dff1(.D(next_state[1]), .clk(clk), .rst(rst), .Q(Q[1]), .nQ());
    d_flipflop dff2(.D(next_state[2]), .clk(clk), .rst(rst), .Q(Q[2]), .nQ());
    
    // Toggle output on each full cycle (when count reaches 5)
    reg out_reg;
    always @(posedge clk or posedge rst) begin
        if (rst)
            out_reg <= 0;
        else if (reset)
            out_reg <= ~out_reg;
    end
    assign out = out_reg;
endmodule