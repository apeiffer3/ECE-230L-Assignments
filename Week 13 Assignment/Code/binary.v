module binary (
    input  w,
    input  clk,
    input  reset,
    output reg z,
    output [2:0] state_out
);


    localparam A = 3'd0;
    localparam B = 3'd1;
    localparam C = 3'd2;
    localparam D = 3'd3;
    localparam E = 3'd4;

    reg [2:0] state;
    reg [2:0] next;

    assign state_out = state;

    always @(*) begin
        case (state)
            A: next = (w) ? D : B;
            B: next = (w) ? D : C;
            C: next = (w) ? D : C;
            D: next = (w) ? E : B;
            E: next = (w) ? E : B;
            default: next = A;
        endcase
    end

    always @(*) begin
        case (state)
            C: z = 1'b1;
            E: z = 1'b1;
            default: z = 1'b0;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= A;
        else
            state <= next;
    end

endmodule

