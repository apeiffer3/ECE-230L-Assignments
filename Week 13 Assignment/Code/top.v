module top(
    input [0:0] sw,     
    output [9:0] led, 
    input btnC,   
    input btnU    
);


    wire w_in = sw[0];
    
    wire clk = btnC;
    wire reset_in = btnU;

    wire z_oh; 
    wire z_bin; 
    wire [4:0] state_oh; 
    wire [2:0] state_bin; 

    onehot one_hot_inst (
        .w(w_in),
        .clk(clk), 
        .reset(reset_in),
        .z(z_oh),
        .state_out(state_oh)
    );

    binary binary_inst (
        .w(w_in),
        .clk(clk), 
        .reset(reset_in),
        .z(z_bin),
        .state_out(state_bin)
    );


    assign led[0] = z_oh;

    assign led[1] = z_bin;

    assign led[6:2] = state_oh;

    assign led[9:7] = state_bin;

endmodule