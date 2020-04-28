`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:46 06/25/2019
// Design Name:   BRAM
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/Test.v
// Project Name:  CEP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BRAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	
	reg ena;
	reg [0:0] wea;
	reg [10:0] addra;
	reg [7:0] dina;
	
	reg enb;
	reg [8:0] addrb;
	reg CLK_IN1;
	reg RESET;
	reg[7:0] ex_mem[0:65535];

	// Outputs
	wire CLK_OUT1;
	wire CLK_OUT2;
	wire CLK_OUT3,S_CLK;
	wire LOCKED;
	// Outputs
	wire [31:0] doutb;
   integer i;
	
	// Instantiate the Unit Under Test (UUT)
	BRAM MM (
		.clka(CLK_OUT1), 
		.ena(ena), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.clkb(S_CLK), 
		.enb(enb), 
		.addrb(addrb), 
		.doutb(doutb)
	);
   CMT uut2 (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);
	Mux2x1 mux (
    .clkout1(CLK_IN1), 
    .clkout2(CLK_OUT2), 
    .clkout3(CLK_OUT3), 
    .S_CLK(S_CLK)
    );


  
	always #5 CLK_IN1 = ~CLK_IN1 ;
	initial begin
		// Initialize Inputs
		// Initialize Inputs
		CLK_IN1 = 0;
		RESET = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		enb = 0;
		addrb = 0;
      $readmemh("binary.txt",ex_mem);
		for(i=0;i<20;i=i+1)
		begin
		dina=ex_mem[i];
		#5;
		end
		
		// Wait 100 ns for global reset to finish
	//	#320;
   

	end
      
endmodule