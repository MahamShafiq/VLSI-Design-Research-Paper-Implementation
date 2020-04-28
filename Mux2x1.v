`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:07:20 06/25/2019 
// Design Name: 
// Module Name:    Mux2x1 
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
module Mux2x1(input clkout1,clkout2,clkout3 ,output reg S_CLK
    );
	
	 
always @ ( *)

if (clkout1==1)
S_CLK=clkout2;
else
S_CLK=clkout3;
endmodule

