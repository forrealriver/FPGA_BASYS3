`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/24 09:04:38
// Design Name: 
// Module Name: clk_divide
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_divide(clk_scan,clk_in, rst);
 output reg clk_scan;
	 input clk_in,rst;
	 reg [17:0] count_scan;
	 
	 parameter count_scan_max=249999;
				  
	 always@(posedge clk_in or posedge rst)
	 begin
		if(rst)
			begin
				count_scan <= 0;
				clk_scan<=0;
			end
		else if(count_scan == count_scan_max)//249999
			begin
				count_scan <= 0;
				clk_scan <= !clk_scan;
			end
		else	count_scan <= count_scan + 1;
	 end
	 

endmodule
