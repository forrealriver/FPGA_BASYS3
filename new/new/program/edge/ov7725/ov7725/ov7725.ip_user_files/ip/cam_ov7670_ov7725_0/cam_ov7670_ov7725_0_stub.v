// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Thu Nov 10 13:43:54 2016
// Host        : asus-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.v
// Design      : cam_ov7670_ov7725_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cam_ov7670_ov7725,Vivado 2015.4" *)
module cam_ov7670_ov7725_0(pclk, vsync, href, d, H_cnt, V_cnt, addr, dout, we, wclk)
/* synthesis syn_black_box black_box_pad_pin="pclk,vsync,href,d[7:0],H_cnt[11:0],V_cnt[10:0],addr[16:0],dout[15:0],we,wclk" */;
  input pclk;
  input vsync;
  input href;
  input [7:0]d;
  output [11:0]H_cnt;
  output [10:0]V_cnt;
  output [16:0]addr;
  output [15:0]dout;
  output we;
  output wclk;
endmodule
