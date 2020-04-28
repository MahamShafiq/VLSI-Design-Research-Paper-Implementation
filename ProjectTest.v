`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:03 07/05/2019
// Design Name:   MainModule
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/ProjectTest.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ProjectTest;

	// Inputs
	reg CLK;
	reg Start;

	// Outputs
	wire Complete;
	wire [7:0] Out9;
	wire [7:0] Out8;
	wire [7:0] Out7;
	wire [7:0] Out6;
	wire [7:0] Out5;
	wire [7:0] Out4;
	wire [7:0] Out3;
	wire [7:0] Out2;
	wire [7:0] Out1;

	// Instantiate the Unit Under Test (UUT)
	MainModule uut (
		.CLK(CLK), 
		.Start(Start), 
		.Complete(Complete), 
		.Out9(Out9), 
		.Out8(Out8), 
		.Out7(Out7), 
		.Out6(Out6), 
		.Out5(Out5), 
		.Out4(Out4), 
		.Out3(Out3), 
		.Out2(Out2), 
		.Out1(Out1)
	);
always  #10 CLK = ~CLK;
	initial begin
		// Initialize Inputs
		CLK = 0;
		Start = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

