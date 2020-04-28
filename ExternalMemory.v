`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:57 07/06/2019 
// Design Name: 
// Module Name:    ExternalMemory 
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
module ExternalMemory(input Lock,CLK, output reg[7:0] dina
    );
	
reg [7:0]ext_mem[0:65535];//65535
reg [32:0]i;

initial 
begin
$readmemh("image.txt",ext_mem);
i=-2;  
end  

always@(posedge CLK)    
begin
if(Lock==1)
begin
      dina<=ext_mem[i];
      i<=i+1;
		
  end
  end

endmodule
