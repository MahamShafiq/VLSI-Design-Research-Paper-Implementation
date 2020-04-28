`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:39 07/05/2019
// Design Name:   MainModule
// Module Name:   C:/Users/maham/Desktop/My semester/vlsi/CEP/final.v
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

module final;

	// Inputs
	reg CLK;
	reg Start;
	reg [7:0] dina;

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
		reg [7:0]ext_mem[0:65535];//65535
reg [32:0]i;


	// Instantiate the Unit Under Test (UUT)
	MainModule uut (
		.CLK(CLK), 
		.Start(Start), 
		.dina(dina), 
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
		.Out1(Out1)
	);

	always #10 CLK= ~CLK;
	initial begin
		// Initialize Inputs
		CLK = 0;
		Start = 1;
	


$readmemh("image.txt",ext_mem);
i=0;  
end  

always@(posedge CLK)    
begin
if(LOCK==1)
begin
      dina<=ext_mem[i];
      i<=i+1;
		
  end

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

