`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/12 20:03:40
// Design Name: 
// Module Name: ram_read_1
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


module ram_read_1 (
  clk,
  valid,
  din,
  address,
  vga_h_cnt,
  vga_v_cnt,
  vga_red,
  vga_green,
  vga_blue,
  clk1,
  seg_select,
  digit_select,
  sw1,
  sw2,
  sw3,
  sw4
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *)
input wire clk;
input wire valid;
input wire [15 : 0] din;
output wire [16 : 0] address;
input wire [11 : 0] vga_h_cnt;
input wire [10 : 0] vga_v_cnt;
output wire [3 : 0] vga_red;
output wire [3 : 0] vga_green;
output wire [3 : 0] vga_blue;
output wire [7:0] seg_select;
output wire [3:0] digit_select;

input clk1,sw1,sw2,sw3,sw4;
  ram_read1 #(
    .SHOW_H_START(4),
    .SHOW_V_START(3),
    .SHOW_WIDTH(320),
    .SHOW_HEIGHT(240)
  ) inst (
    .clk(clk),
    .valid(valid),
    .din(din),
    .address(address),
    .vga_h_cnt(vga_h_cnt),
    .vga_v_cnt(vga_v_cnt),
    .vga_red(vga_red),
    .vga_green(vga_green),
    .vga_blue(vga_blue),
    .clk1(clk1),
    .seg_select(seg_select),
    .digit_select(digit_select),
    .sw1(sw1),
    .sw2(sw2),
    .sw3(sw3),
    .sw4(sw4)
  );
endmodule
