`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:24 06/25/2019 
// Design Name: 
// Module Name:    MainModule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
////////////////////////////////////////////////////////////////////////////////

module MainModule ( input CLK,Start, output [7:0] Out9,output LOCK,
output [7:0] Out8,Out7,Out6,Out5,Out4,Out3,Out2,Out1
,output clk1,clk2,
	 output EN_A,EN_B,W_A,EN_BramWr,EN_BramRd,En_Steer,
	 output[2:0] Select,
	 output[10:0] Addra,
	 output[8 : 0] Addrb,
	 output[31:0]register1,register2,
	 input[7:0] dina,
	 output [31:0] db
	 

);
	
	/* 
	 wire clk1,clk2;
	 wire EN_A,EN_B,W_A,EN_BramWr,EN_BramRd,En_Steer,Reset;
	 wire[2:0] Select;
	 wire[10:0] Addra;
	 wire [8 : 0] Addrb;
	 wire[31:0]register1,register2;
	 integer i=0;
	 wire[7:0] dina;
	 wire [31:0] db;
	
*/	
 
   CMT Clock
   (// Clock in ports
    .CLK_IN1(CLK),      // IN
    // Clock out ports
    .CLK_OUT1(clk1),     // OUT
    .CLK_OUT2(CLK_OUT2), 
 // OUT
    .CLK_OUT3(CLK_OUT3),     // OUT
    // Status and control signals
    .RESET(RESET),// IN
    .LOCKED(LOCK)
	 );      // OUT
	 
	 
// Instantiate the module
    Mux2x1 MUX_CLK (
    .clkout1(clk1), 
    .clkout2(CLK_OUT2), 
    .clkout3(CLK_OUT3), 
    .S_CLK(clk2)
    );
	

  BRAM18 MM (
  .clka(clk1), // input clka
  .ena(EN_A), // input ena
  .wea(W_A), // input [0 : 0] wea
  .addra(Addra), // input [10 : 0] addra
  .dina(dina), // input [7 : 0] dina
  .clkb(clk2), // input clkb
  .enb(EN_B), // input enb
  .addrb(Addrb), // input [8 : 0] addrb
  .doutb(db) // output [31 : 0] doutb
);

Registers32x2 Register (
     
    .doutb(db), 
    .readclk(clk2), 
    .reg1(register1), 
    .reg2(register2)
    
    );
assign Out9= (En_Steer==1) ? dina :8'bzz;

	 AGM AGM (
    .Enwr(EN_BramWr), 
    .Enrd(EN_BramRd), 
    .Readclk(clk2), 
    .Writeclk(clk1), 
    .reset(Reset), 
    .addra(Addra), 
    .addrb(Addrb)
    );


	

CM CM (
    .start(Start), 
    .writeclk(clk1), 
    .readclk(clk2), 
    .lock(LOCK), 
    .complete(Complete), 
    .ena(EN_A), 
    .enb(EN_B), 
    .wa(W_A), 
    .resetaddr(Reset), 
    .ensteer(En_Steer), 
    .selectline(Select), 
    .enwr(EN_BramWr), 
    .enrd(EN_BramRd)
    );


// Instantiate the module
SM SteerModule (
    .clk1(clk1), 
    .enable(En_Steer), 
    .select(Select), 
    .R1(register2), 
    .R2(register1), 
    .Out8(Out8), 
    .Out7(Out7), 
    .Out6(Out6), 
    .Out5(Out5), 
    .Out4(Out4), 
    .Out3(Out3), 
    .Out2(Out2), 
    .Out1(Out1)
    );




endmodule
