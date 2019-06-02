`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/24 09:05:17
// Design Name: 
// Module Name: display_scan
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


module display_scan(current_showdata, scan_current_state, rst, dataone, datatwo, datathree, datafour, clk_scan);

output reg [7:0] current_showdata;
	 output reg [3:0] scan_current_state;
	 input rst, clk_scan;
	 input [3:0] dataone, datatwo, datathree, datafour;
	 
	 wire [7:0] data1,data2,data3,data4;
	 
	 code_change d1(dataone,data1);
	 code_change d2(datatwo,data2);
	 code_change d3(datathree,data3);
	 code_change d4(datafour,data4);
 parameter       stateone = 4'b0111,
				  statetwo = 4'b1011,
				  statethree = 4'b1101,
				  statefour = 4'b1110;

always@(posedge rst or posedge clk_scan)
begin
	if(rst)
	begin
		scan_current_state<=stateone;
		current_showdata<=8'b00000011;
	end
	else
		case(scan_current_state)
		stateone:begin scan_current_state<=statetwo;
					current_showdata<=data2;end
		statetwo:begin scan_current_state<=statethree;
					current_showdata<=data3;end
		statethree:begin scan_current_state<=statefour;
					current_showdata<=data4;end
		statefour:begin scan_current_state<=stateone;
					current_showdata<=data1;end
		default:begin scan_current_state<=stateone;
					current_showdata<=data1;end
		endcase
end
endmodule
