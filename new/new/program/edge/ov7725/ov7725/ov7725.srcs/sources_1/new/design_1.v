`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/11/10 13:32:04
// Design Name: 
// Module Name: design_1
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


module design_1(
    OV7725_D,
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
    digit_select
    );
    
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
    
    wire IICctrl_0_I2C_SCLK;
    wire [7:0]IICctrl_0_LUT_INDEX;
    wire Net;
    wire [15:0]blk_mem_gen_0_doutb;
    wire [16:0]cam_ov7670_ov7725_0_addr;
    wire [15:0]cam_ov7670_ov7725_0_dout;
    wire cam_ov7670_ov7725_0_wclk;
    wire cam_ov7670_ov7725_0_we;
    wire clk_in1_1;
    wire clk_wiz_0_clk_out1;
    wire [7:0]d_1;
    wire href_1;
    wire [15:0]ov7725_regData_0_LUT_DATA;
    wire [7:0]ov7725_regData_0_Slave_Addr;
    wire pclk_1;
    wire [16:0]ram_read_0_address;
    wire [3:0]ram_read_0_vga_blue;
    wire [3:0]ram_read_0_vga_green;
    wire [3:0]ram_read_0_vga_red;
    wire [10:0]vga_0_h_cnt;
    wire vga_0_hsync;
    wire [9:0]vga_0_v_cnt;
    wire vga_0_valid;
    wire vga_0_vsync;
    wire vga_rst_1;
    wire vsync_1;
    
    assign OV7725_SIOC = IICctrl_0_I2C_SCLK;
    assign OV7725_XCLK = clk_wiz_0_clk_out1;
    assign clk_in1_1 = clk_in1;
    assign d_1 = OV7725_D[7:0];
    assign href_1 = OV7725_HREF;
    assign pclk_1 = OV7725_PCLK;
    assign vga_blue[3:0] = ram_read_0_vga_blue;
    assign vga_green[3:0] = ram_read_0_vga_green;
    assign vga_hsync = vga_0_hsync;
    assign vga_red[3:0] = ram_read_0_vga_red;
    assign vga_rst_1 = rst;
    assign vga_vsync = vga_0_vsync;
    assign vsync_1 = OV7725_VSYNC;
    
    IICctrl_0 u1(
    .I2C_SCLK(IICctrl_0_I2C_SCLK),
    .I2C_SDAT(OV7725_SIOD),
    .LUT_DATA(ov7725_regData_0_LUT_DATA),
    .LUT_INDEX(IICctrl_0_LUT_INDEX),
    .Slave_Addr(ov7725_regData_0_Slave_Addr),
    .iCLK(clk_wiz_0_clk_out1),
    .rst(vga_rst_1));
    
    blk_mem_gen_0 u2(
    .addra(cam_ov7670_ov7725_0_addr),
    .addrb(ram_read_0_address),
    .clka(cam_ov7670_ov7725_0_wclk),
    .clkb(clk_wiz_0_clk_out1),
    .dina(cam_ov7670_ov7725_0_dout),
    .doutb(blk_mem_gen_0_doutb),
    .wea(cam_ov7670_ov7725_0_we));
    
    cam_ov7670_ov7725_0 u3(
    .addr(cam_ov7670_ov7725_0_addr),
    .d(d_1),
    .dout(cam_ov7670_ov7725_0_dout),
    .href(href_1),
    .pclk(pclk_1),
    .vsync(vsync_1),
    .wclk(cam_ov7670_ov7725_0_wclk),
    .we(cam_ov7670_ov7725_0_we));
    
    clk_wiz_0 u4(
    .clk_in1(clk_in1_1),
    .clk_out1(clk_wiz_0_clk_out1));
    
    ov7725_regData_0 u5(
    .LUT_DATA(ov7725_regData_0_LUT_DATA),
    .LUT_INDEX(IICctrl_0_LUT_INDEX),
    .Slave_Addr(ov7725_regData_0_Slave_Addr));
    
    ram_read_1 u6(
    .address(ram_read_0_address),
    .clk(clk_wiz_0_clk_out1),
    .din(blk_mem_gen_0_doutb),
    .valid(vga_0_valid),
    .vga_blue(ram_read_0_vga_blue),
    .vga_green(ram_read_0_vga_green),
    .vga_h_cnt(vga_0_h_cnt),
    .vga_red(ram_read_0_vga_red),
    .vga_v_cnt(vga_0_v_cnt),
    .clk1(clk_in1),
    .seg_select(seg_select),
    .digit_select(digit_select),
    .sw1(sw1),
    .sw2(sw2),
    .sw3(sw3),
    .sw4(sw4));
    
    vga_0 u7(
    .h_cnt(vga_0_h_cnt),
    .hsync(vga_0_hsync),
    .pclk(clk_wiz_0_clk_out1),
    .reset(vga_rst_1),
    .v_cnt(vga_0_v_cnt),
    .valid(vga_0_valid),
    .vsync(vga_0_vsync));
    
endmodule
