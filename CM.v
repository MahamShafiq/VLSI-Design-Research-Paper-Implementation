`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:00 06/29/2019 
// Design Name: 
// Module Name:    CM 
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
module CM(input start ,writeclk,readclk,lock ,output reg complete,ena,enb,wa,resetaddr,ensteer,
output reg[2:0] selectline,output reg enwr,enrd
    );
integer i=0;	
initial begin
resetaddr=1;
selectline=-1;
end
always @( posedge writeclk)
begin
if(start && lock)
begin
if(i>=1)
resetaddr=0;
i=i+1;
if(i== 2051 )
begin
ena<=0;
enwr<=0;
end
else
begin

enwr<=1;
ena<=enwr;
end
wa<=1;

if(ensteer)
selectline<=(selectline+1)%8;
end
end

always@(posedge readclk)
begin
if(i>2050)
begin
enrd<=1;
enb<=1;
ensteer<=enb;
complete<=0;
end
end
endmodule
