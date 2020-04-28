`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:19 07/06/2019 
// Design Name: 
// Module Name:    Register32x2 
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
//////////////////////////////////////////////////////////////////////////////////
module Registers32x2(input[31:0] doutb,input readclk,
output reg[31:0] reg1,reg2
    );
	
	 integer i;
 always @(posedge readclk)
 begin 
 reg1<=doutb;
 reg2<=reg1;

 end

endmodule
