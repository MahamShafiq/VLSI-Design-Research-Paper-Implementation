`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:15:11 06/30/2019
// Design Name:   SM
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/Steertest.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Steertest;

// Inputs
	reg clock;
	reg enable;
	reg [2:0] select;
	reg [31:0] R1;
	reg [31:0] R2;

	// Outputs
	wire [7:0] Out8;
	wire [7:0] Out7;
	wire [7:0] Out6;
	wire [7:0] Out5;
	wire [7:0] Out4;
	wire [7:0] Out3;
	wire [7:0] Out2;
	wire [7:0] Out1;

	// Instantiate the Unit Under Test (UUT)
	SM uut (
		.clock(clock), 
		.enable(enable), 
		.select(select), 
		.R1(R1), 
		.R2(R2), 
		.Out8(Out8), 
		.Out7(Out7), 
		.Out6(Out6), 
		.Out5(Out5), 
		.Out4(Out4), 
		.Out3(Out3), 
		.Out2(Out2), 
		.Out1(Out1)
	);

	always #5clock= ~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		enable = 1;
		select = 0;
		R1 = 0;
		R2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here
				clock = 0;
		enable = 1;
		select = 0;
		R1 = 16;
		R2 = 15;

		// Wait 100 ns for global reset to finish
		#20;

		clock = 0;
		enable = 1;
		select = 1;
		R1 = 16;
		R2 = 15;

		// Wait 100 ns for global reset to finish
		#20;

		clock = 0;
		enable = 1;
		select = 2;
		R1 = 16;
		R2 = 15;

		// Wait 100 ns for global reset to finish
		#20;


	end
      
endmodule

