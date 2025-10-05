module top(
	input [7:0] sw,
	output [5:0] led
);// Implement top level module

	wire carry_bit_0;

	light light_inst(
	.downstairs(sw[0]),
	.upstairs(sw[1]),
	.stair_light(led[0])
	);

	adder adder_inst(
		.A(sw[2]),
		.B(sw[3]),
		.Y(led[1]),
		.Carry(led[2])
	);
	
		
	full_adder fa_lsb_inst (
		.A(sw[4]),
		.B(sw[6]), //C
		.Cin(1'b0),
		.Y(led[3]),
		.Cout(carry_bit_0)
	);
	
	full_adder fa_msb_inst (
		.A(sw[5]), //b
		.B(sw[7]),
		.Cin(carry_bit_0),
		.Y(led[4]),
		.Cout(led[5])
	);
	
endmodule