`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:05 06/29/2019 
// Design Name: 
// Module Name:    Mux4x1 
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
module Mux4x1( input [7:0] a,                 // 8-bit input called a
                       input [7:0] b,                 // 8-bit input called b
                       input [7:0] c,                 // 8-bit input called c
                       input [7:0] d,                 // 8-bit input called d
                       input [1:0] sel,               // input sel used to select between a,b,c,d
                       output reg [7:0] out);         // 8-bit output based on input sel
 
   // This always block gets executed whenever a/b/c/d/sel changes value
   // When that happens, based on value in sel, output is assigned to either a/b/c/d
   always @ (a or b or c or d or sel) 
	begin
      case (sel)
         2'b00 : out = a;
         2'b01 : out = b;
         2'b10 : out = c;
         2'b11 : out = d;
      endcase
   end
endmodule
 

