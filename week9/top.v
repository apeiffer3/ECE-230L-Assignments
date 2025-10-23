module top(
    input [15:0] sw,          // Switch inputs
    input btnL, btnU, btnD, btnR, btnC,  // Buttons
    output [15:0] led         // LED outputs
);
    // Intermediate signals
    wire [3:0] mux_out;
    wire [1:0] mux_sel;
    wire [1:0] demux_sel;

    // Concatenate buttons into 2-bit vectors for selection
    assign mux_sel   = {btnU, btnL};   // MUX select
    assign demux_sel = {btnR, btnD};   // DEMUX select

    // Instantiate 4-to-1 MUX
    mux4to1_4bit M1 (
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        .Sel(mux_sel),
        .En(btnC),
        .Y(mux_out)
    );

    // Instantiate 1-to-4 DEMUX
    demux1to4_4bit D1 (
        .In(mux_out),
        .Sel(demux_sel),
        .En(btnC),
        .local_lib(led[3:0]),
        .FireDept(led[7:4]),
        .School(led[11:8]),
        .RibShack(led[15:12])
    );

endmodule