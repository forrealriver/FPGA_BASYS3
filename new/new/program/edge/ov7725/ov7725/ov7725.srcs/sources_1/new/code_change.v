`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/24 09:05:55
// Design Name: 
// Module Name: code_change
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


module code_change(datain, dataout);
 output [7:0] dataout;
	 input [3:0] datain;
	 
	 reg [7:0] dataout;
	 
	 always@(datain)
	 case(datain)
		1: dataout = 8'b10011111;
		2: dataout = 8'b00100101;
		3: dataout = 8'b00001101;
		4: dataout = 8'b10011001;
		5: dataout = 8'b01001001;
		6: dataout = 8'b01000001;
		7: dataout = 8'b00011111;
		8: dataout = 8'b00000001;
		9: dataout = 8'b00001001;
		0: dataout = 8'b00000011;
	 endcase



endmodule
