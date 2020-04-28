`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:07 06/29/2019 
// Design Name: 
// Module Name:    AGM 
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
module AGM( input Enwr,Enrd ,Readclk,Writeclk,reset,
output reg[10:0] addra,
output reg[8:0] addrb);
//reg[10:0] addra;
//reg[10:0] addrb;

 always@(posedge Writeclk)
 begin
 if(reset)
addra=-1;
if(Enwr==1 && reset==0)
begin
if(addra==2047)
   addra=2040;
else if(addra>2039 && addra <2047)
addra=addra+1;
addra=(addra+8)%2048;
end
end
always@(posedge Readclk)
begin
if(reset)
addrb=-1;
if(Enrd==1 && reset==0)
begin
addrb=addrb+1%511;
end
end
endmodule

