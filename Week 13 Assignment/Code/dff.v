module dff(
    input  Default,
    input  D,
    input  clk,
    input  reset,
    output reg Q
);

    initial Q = Default;

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= Default;
        else
            Q <= D;  
    end
endmodule
