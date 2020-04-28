`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:09 06/30/2019 
// Design Name: 
// Module Name:    Mux8x1 
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
module Mux8x1(input [7:0] a,                 // 4-bit input called a
                       input [7:0] b,                 // 4-bit input called b
                       input [7:0] c,                 // 4-bit input called c
                       input [7:0] d,     
                        input [7:0] e,                 
                       input [7:0] f,                 // 4-bit input called f
                       input [7:0] g,                 // 4-bit input called g
                       input [7:0] h,     							  // 4-bit input called h
                       input [2:0] sel,               // input sel used to select between a,b,c,d
                       output reg [7:0] out,
							  input clk);         // 4-bit output based on input sel
 
   // This always block gets executed whenever a/b/c/d/sel changes value
   // When that happens, based on value in sel, output is assigned to either a/b/c/d
   always @ (posedge clk) begin
      case (sel)
         3'b000 : out = a;
         3'b001 : out = b;
         3'b010 : out = c;
         3'b011 : out= d;
			3'b100 : out = e;
         3'b101 : out = f;
         3'b110 : out = g;
         3'b111 : out= h;
      endcase
   end
endmodule
 
