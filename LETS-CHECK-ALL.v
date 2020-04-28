`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:27:26 07/07/2019
// Design Name:   MainModule
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/LETS-CHECK-ALL.v
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

module LETS-CHECK-ALL;

	// Inputs
	reg CLK;
	reg Start;

	// Outputs
	wire [7:0] Out9;
	wire Complete;
	wire LOCK;
	wire [7:0] Out8;
	wire [7:0] Out7;
	wire [7:0] Out6;
	wire [7:0] Out5;
	wire [7:0] Out4;
	wire [7:0] Out3;
	wire [7:0] Out2;
	wire [7:0] Out1;
	wire clk1;
	wire clk2;
	wire EN_A;
	wire EN_B;
	wire W_A;
	wire EN_BramWr;
	wire EN_BramRd;
	wire En_Steer;
	wire Reset;
	wire [2:0] Select;
	wire [10:0] Addra;
	wire [8:0] Addrb;
	wire [31:0] register1;
	wire [31:0] register2;
	wire [7:0] dina;
	wire [31:0] db;

	// Instantiate the Unit Under Test (UUT)
	MainModule uut (
		.CLK(CLK), 
		.Start(Start), 
		.Out9(Out9), 
		.Complete(Complete), 
		.LOCK(LOCK), 
		.Out8(Out8), 
		.Out7(Out7), 
		.Out6(Out6), 
		.Out5(Out5), 
		.Out4(Out4), 
		.Out3(Out3), 
		.Out2(Out2), 
		.Out1(Out1), 
		.clk1(clk1), 
		.clk2(clk2), 
		.EN_A(EN_A), 
		.EN_B(EN_B), 
		.W_A(W_A), 
		.EN_BramWr(EN_BramWr), 
		.EN_BramRd(EN_BramRd), 
		.En_Steer(En_Steer), 
		.Reset(Reset), 
		.Select(Select), 
		.Addra(Addra), 
		.Addrb(Addrb), 
		.register1(register1), 
		.register2(register2), 
		.dina(dina), 
		.db(db)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		Start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

