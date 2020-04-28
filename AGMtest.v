`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:51:24 06/29/2019
// Design Name:   AGM
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/AGMtest.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AGM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AGMtest;
// Inputs
	reg Enwr;
	reg Enrd;
	reg Readclk;
	reg Writeclk;
	reg reset;

	// Outputs
	wire [10:0] addra;
	wire [8:0] addrb;

	// Instantiate the Unit Under Test (UUT)
	AGM uut (
		.Enwr(Enwr), 
		.Enrd(Enrd), 
		.Readclk(Readclk), 
		.Writeclk(Writeclk), 
		.reset(reset), 
		.addra(addra), 
		.addrb(addrb)
	);
	
 always #5 Readclk= ~Readclk;
  always #10 Writeclk= ~Writeclk;
	initial begin
		// Initialize Inputs
		Enwr = 1;
		Enrd = 1;
		Readclk = 0;
		Writeclk = 0;
		reset=1;

		// Wait 100 ns for global reset to finish
		#20;
		reset=0;
		#5;
		
		Writeclk = 1;
		Enwr = 1;
		Enrd = 1;
		
		reset=0;

		// Wait 100 ns for global reset to finish
		#10;
		
        
		// Add stimulus here

	end
      
endmodule
