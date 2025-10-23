module mux4to1_4bit(
    input [3:0] CEO,
    input [3:0] You,
    input [3:0] Fred,
    input [3:0] Jill,
    input [1:0] Sel,
    input En,
    output [3:0] Y
);

    // 4-to-1 MUX using chained ternary operators
    assign Y = En ? 
                (Sel == 2'b00 ? CEO :
                 Sel == 2'b01 ? You :
                 Sel == 2'b10 ? Fred :
                                 Jill)
                : 4'b0000;

endmodule