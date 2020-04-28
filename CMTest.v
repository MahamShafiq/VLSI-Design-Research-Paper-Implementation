`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:06:47 07/01/2019
// Design Name:   CM
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/CMtest.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CMtest;

	// Inputs
	reg start;
	reg writeclk;
	reg readclk;
	reg lock;

	// Outputs
	wire complete;
	wire ena;
	wire enb;
	wire wa;
	wire resetaddr;
	wire ensteer;
	wire [2:0] selectline;
	wire enwr;
	wire enrd;

	// Instantiate the Unit Under Test (UUT)
	CM uut (
		.start(start), 
		.writeclk(writeclk), 
		.readclk(readclk), 
		.lock(lock), 
		.complete(complete), 
		.ena(ena), 
		.enb(enb), 
		.wa(wa), 
		.resetaddr(resetaddr), 
		.ensteer(ensteer), 
		.selectline(selectline), 
		.enwr(enwr), 
		.enrd(enrd)
	);

	
	always
	begin
	#10 writeclk= ~writeclk;
	 #5 readclk= ~readclk;
	 end
	initial begin
		// Initialize Inputs
		start = 0;
		readclk = 0;
		lock = 0;
		writeclk=0;

		// Wait 100 ns for global reset to finish
		#100;
			start = 1;

		lock = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      

endmodule 