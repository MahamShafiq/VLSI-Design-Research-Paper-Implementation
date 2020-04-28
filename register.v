`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:10:44 06/30/2019 
// Design Name: 
// Module Name:    register 
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
module register(input [31:0] R1,R2,output o1,o2,o3,o4,o5,o6,o7,o8
    );
	reg o1,o2,o3,o4,o5,o6,o7,o8;
always @(*)
begin
    o1<=R1[31:24];
	 o2<=R1[23:16];
	 o3<=R1[15:8];
	 o4<=R1[7:0];
	 o5<=R2[31:24];
	 o6<=R2[23:16];
	 o7=R2[15:8];
	 o8<=R2[7:0];
end
endmodule
