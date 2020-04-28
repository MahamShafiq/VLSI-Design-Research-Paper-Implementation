`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:18 06/29/2019
// Design Name:   BRAM
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/testclkandBram.v
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

module testclkandBram;// Inputs
	reg clka;
	reg ena;
	reg [0:0] wea;
	reg [10:0] addra;
	reg [7:0] dina;
	reg clkb;
	reg enb;
	reg [8:0] addrb;
	reg CLK_IN1;
	reg RESET;

	// Outputs
	wire CLK_OUT1,S_CLK;
	wire CLK_OUT2;
	wire CLK_OUT3;
	wire LOCKED;
	// Outputs
	wire [31:0] doutb;
   integer i;
	
	// Instantiate the Unit Under Test (UUT)
	
   CMT Clock (
		.CLK_IN1(CLK_IN1), 
		.CLK_OUT1(CLK_OUT1), 
		.CLK_OUT2(CLK_OUT2), 
		.CLK_OUT3(CLK_OUT3), 
		.RESET(RESET), 
		.LOCKED(LOCKED)
	);
	Mux2x1 multiplexor (
    .clkout1(CLK_IN1), 
    .clkout2(CLK_OUT2), 
    .clkout3(CLK_OUT3), 
    .S_CLK(S_CLK)
    );
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


  
	always #5 CLK_IN1 = ~CLK_IN1 ;
	initial begin
		// Initialize Inputs
		// Initialize Inputs
		CLK_IN1 = 0;
		RESET = 0;
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;
		clkb = 0;
		enb = 0;
		addrb = 0;
      
		// Wait 100 ns for global reset to finish
	//	#320;
    wea=1;ena=1;
       for(i=0; i<32 ; i=i+1)
		begin
		
			addra = i;
			dina = i + 10 ;
			#10;
		end
enb=1;wea=0;
		// Add stimulus here
		 for(i=0; i<32 ; i=i+1)
		begin
		
			addrb = i;
			//dinb=mem[addr];
			#10;
		end


	end
      
endmodule

