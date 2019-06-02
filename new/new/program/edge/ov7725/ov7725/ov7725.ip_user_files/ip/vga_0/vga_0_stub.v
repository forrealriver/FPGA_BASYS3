// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Thu Nov 10 13:52:27 2016
// Host        : asus-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/vga_0/vga_0_stub.v
// Design      : vga_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga,Vivado 2015.4" *)
module vga_0(pclk, reset, hsync, vsync, valid, h_cnt, v_cnt)
/* synthesis syn_black_box black_box_pad_pin="pclk,reset,hsync,vsync,valid,h_cnt[10:0],v_cnt[9:0]" */;
  input pclk;
  input reset;
  output hsync;
  output vsync;
  output valid;
  output [10:0]h_cnt;
  output [9:0]v_cnt;
endmodule
