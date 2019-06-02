`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/10 13:31:18
// Design Name: 
// Module Name: design_1_wrapper
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


module design_1_wrapper
   (OV7725_D,
    OV7725_HREF,
    OV7725_PCLK,
    OV7725_SIOC,
    OV7725_SIOD,
    OV7725_VSYNC,
    OV7725_XCLK,
    clk_in1,
    rst,
    sw1,
    sw2,
    sw3,
    sw4,
    vga_blue,
    vga_green,
    vga_hsync,
    vga_red,
    vga_vsync,
    seg_select,
    digit_select);
  input [7:0]OV7725_D;
  input OV7725_HREF;
  input OV7725_PCLK;
  output OV7725_SIOC;
  inout OV7725_SIOD;
  input OV7725_VSYNC;
  output OV7725_XCLK;
  input clk_in1;
  input rst,sw1,sw2,sw3,sw4;
  output [3:0]vga_blue;
  output [3:0]vga_green;
  output vga_hsync;
  output [3:0]vga_red;
  output vga_vsync;
  output wire [7:0] seg_select;
  output wire [3:0] digit_select;

  wire [7:0]OV7725_D;
  wire OV7725_HREF;
  wire OV7725_PCLK;
  wire OV7725_SIOC;
  wire OV7725_SIOD;
  wire OV7725_VSYNC;
  wire OV7725_XCLK;
  wire clk_in1;
  wire rst,sw1,sw2,sw3,sw4;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

  design_1 design_1_i
       (.OV7725_D(OV7725_D),
        .OV7725_HREF(OV7725_HREF),
        .OV7725_PCLK(OV7725_PCLK),
        .OV7725_SIOC(OV7725_SIOC),
        .OV7725_SIOD(OV7725_SIOD),
        .OV7725_VSYNC(OV7725_VSYNC),
        .OV7725_XCLK(OV7725_XCLK),
        .clk_in1(clk_in1),
        .rst(rst),
        .sw1(sw1),
        .sw2(sw2),
        .sw3(sw3),
        .sw4(sw4),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync),
        .seg_select(seg_select),
        .digit_select(digit_select));
endmodule
