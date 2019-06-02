// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Dec 01 14:56:27 2016
// Host        : WZJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {F:/1___study/1___study/FPGA/The edge of the
//               recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/vga_0/vga_0_stub.v}
// Design      : vga_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga,Vivado 2016.1" *)
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
