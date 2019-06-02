// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sat Nov 12 15:17:19 2016
// Host        : WZJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/IICctrl_0/IICctrl_0_stub.v
// Design      : IICctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "IICctrl,Vivado 2016.1" *)
module IICctrl_0(iCLK, rst, I2C_SCLK, I2C_SDAT, LUT_INDEX, LUT_DATA, Slave_Addr)
/* synthesis syn_black_box black_box_pad_pin="iCLK,rst,I2C_SCLK,I2C_SDAT,LUT_INDEX[7:0],LUT_DATA[15:0],Slave_Addr[7:0]" */;
  input iCLK;
  input rst;
  output I2C_SCLK;
  inout I2C_SDAT;
  output [7:0]LUT_INDEX;
  input [15:0]LUT_DATA;
  input [7:0]Slave_Addr;
endmodule
