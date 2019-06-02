// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sat Nov 12 15:17:17 2016
// Host        : WZJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/vga_0/vga_0_sim_netlist.v
// Design      : vga_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vga_0,vga,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "vga,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module vga_0
   (pclk,
    reset,
    hsync,
    vsync,
    valid,
    h_cnt,
    v_cnt);
  input pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *) input reset;
  output hsync;
  output vsync;
  output valid;
  output [10:0]h_cnt;
  output [9:0]v_cnt;

  wire \<const0> ;
  wire [9:0]\^h_cnt ;
  wire hsync;
  wire pclk;
  wire reset;
  wire [8:0]\^v_cnt ;
  wire valid;
  wire vsync;

  assign h_cnt[10] = \<const0> ;
  assign h_cnt[9:0] = \^h_cnt [9:0];
  assign v_cnt[9] = \<const0> ;
  assign v_cnt[8:0] = \^v_cnt [8:0];
  GND GND
       (.G(\<const0> ));
  vga_0_vga inst
       (.h_cnt(\^h_cnt ),
        .hsync(hsync),
        .pclk(pclk),
        .reset(reset),
        .v_cnt(\^v_cnt ),
        .valid(valid),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "vga" *) 
module vga_0_vga
   (v_cnt,
    valid,
    h_cnt,
    hsync,
    vsync,
    pclk,
    reset);
  output [8:0]v_cnt;
  output valid;
  output [9:0]h_cnt;
  output hsync;
  output vsync;
  input pclk;
  input reset;

  wire [9:0]h_cnt;
  wire hsync;
  wire hsync_i_i_1_n_0;
  wire hsync_i_i_2_n_0;
  wire hsync_i_i_3_n_0;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[10]_i_1_n_0 ;
  wire \line_cnt[10]_i_2_n_0 ;
  wire \line_cnt[10]_i_4_n_0 ;
  wire \line_cnt[10]_i_5_n_0 ;
  wire \line_cnt[10]_i_6_n_0 ;
  wire \line_cnt[10]_i_7_n_0 ;
  wire \line_cnt[10]_i_8_n_0 ;
  wire \line_cnt[10]_i_9_n_0 ;
  wire [10:0]line_cnt_reg__0;
  wire [10:1]p_0_in;
  wire [10:1]p_0_in__0;
  wire pclk;
  wire \pixel_cnt[0]_i_1_n_0 ;
  wire \pixel_cnt[10]_i_1_n_0 ;
  wire \pixel_cnt[10]_i_3_n_0 ;
  wire \pixel_cnt[10]_i_4_n_0 ;
  wire \pixel_cnt[10]_i_5_n_0 ;
  wire [10:0]pixel_cnt_reg__0;
  wire reset;
  wire [8:0]v_cnt;
  wire valid;
  wire valid0__6;
  wire vsync;
  wire vsync_i_i_1_n_0;
  wire vsync_i_i_2_n_0;
  wire vsync_i_i_3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[0]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[0]),
        .O(h_cnt[0]));
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[1]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[1]),
        .O(h_cnt[1]));
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[2]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[2]),
        .O(h_cnt[2]));
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[3]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[3]),
        .O(h_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[4]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[4]),
        .O(h_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[5]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[5]),
        .O(h_cnt[5]));
  LUT5 #(
    .INIT(32'h11150000)) 
    \h_cnt[6]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[6]),
        .O(h_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \h_cnt[7]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[7]),
        .O(h_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \h_cnt[8]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .O(h_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \h_cnt[9]_INST_0 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[8]),
        .I2(pixel_cnt_reg__0[7]),
        .I3(pixel_cnt_reg__0[9]),
        .O(h_cnt[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF40BF)) 
    hsync_i_i_1
       (.I0(hsync_i_i_2_n_0),
        .I1(pixel_cnt_reg__0[3]),
        .I2(pixel_cnt_reg__0[2]),
        .I3(pixel_cnt_reg__0[4]),
        .I4(hsync_i_i_3_n_0),
        .I5(reset),
        .O(hsync_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    hsync_i_i_2
       (.I0(pixel_cnt_reg__0[0]),
        .I1(pixel_cnt_reg__0[1]),
        .O(hsync_i_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    hsync_i_i_3
       (.I0(pixel_cnt_reg__0[5]),
        .I1(pixel_cnt_reg__0[7]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[9]),
        .I4(pixel_cnt_reg__0[6]),
        .I5(pixel_cnt_reg__0[10]),
        .O(hsync_i_i_3_n_0));
  FDRE hsync_i_reg
       (.C(pclk),
        .CE(1'b1),
        .D(hsync_i_i_1_n_0),
        .Q(hsync),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \line_cnt[0]_i_1 
       (.I0(line_cnt_reg__0[0]),
        .O(\line_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800000)) 
    \line_cnt[10]_i_1 
       (.I0(\line_cnt[10]_i_4_n_0 ),
        .I1(\line_cnt[10]_i_5_n_0 ),
        .I2(\line_cnt[10]_i_6_n_0 ),
        .I3(\line_cnt[10]_i_7_n_0 ),
        .I4(\line_cnt[10]_i_8_n_0 ),
        .I5(reset),
        .O(\line_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \line_cnt[10]_i_2 
       (.I0(pixel_cnt_reg__0[0]),
        .I1(pixel_cnt_reg__0[1]),
        .I2(pixel_cnt_reg__0[6]),
        .I3(pixel_cnt_reg__0[5]),
        .I4(pixel_cnt_reg__0[4]),
        .I5(\line_cnt[10]_i_5_n_0 ),
        .O(\line_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \line_cnt[10]_i_3 
       (.I0(line_cnt_reg__0[8]),
        .I1(line_cnt_reg__0[6]),
        .I2(\line_cnt[10]_i_9_n_0 ),
        .I3(line_cnt_reg__0[7]),
        .I4(line_cnt_reg__0[9]),
        .I5(line_cnt_reg__0[10]),
        .O(p_0_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \line_cnt[10]_i_4 
       (.I0(pixel_cnt_reg__0[4]),
        .I1(pixel_cnt_reg__0[5]),
        .I2(pixel_cnt_reg__0[6]),
        .I3(pixel_cnt_reg__0[1]),
        .I4(pixel_cnt_reg__0[0]),
        .O(\line_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \line_cnt[10]_i_5 
       (.I0(pixel_cnt_reg__0[8]),
        .I1(pixel_cnt_reg__0[7]),
        .I2(pixel_cnt_reg__0[9]),
        .I3(pixel_cnt_reg__0[10]),
        .I4(pixel_cnt_reg__0[3]),
        .I5(pixel_cnt_reg__0[2]),
        .O(\line_cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \line_cnt[10]_i_6 
       (.I0(line_cnt_reg__0[6]),
        .I1(line_cnt_reg__0[7]),
        .I2(line_cnt_reg__0[3]),
        .I3(line_cnt_reg__0[2]),
        .O(\line_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \line_cnt[10]_i_7 
       (.I0(line_cnt_reg__0[5]),
        .I1(line_cnt_reg__0[8]),
        .I2(line_cnt_reg__0[10]),
        .I3(line_cnt_reg__0[4]),
        .O(\line_cnt[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \line_cnt[10]_i_8 
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .O(\line_cnt[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_cnt[10]_i_9 
       (.I0(line_cnt_reg__0[5]),
        .I1(line_cnt_reg__0[3]),
        .I2(line_cnt_reg__0[1]),
        .I3(line_cnt_reg__0[0]),
        .I4(line_cnt_reg__0[2]),
        .I5(line_cnt_reg__0[4]),
        .O(\line_cnt[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \line_cnt[1]_i_1 
       (.I0(line_cnt_reg__0[0]),
        .I1(line_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \line_cnt[2]_i_1 
       (.I0(line_cnt_reg__0[0]),
        .I1(line_cnt_reg__0[1]),
        .I2(line_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \line_cnt[3]_i_1 
       (.I0(line_cnt_reg__0[1]),
        .I1(line_cnt_reg__0[0]),
        .I2(line_cnt_reg__0[2]),
        .I3(line_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \line_cnt[4]_i_1 
       (.I0(line_cnt_reg__0[2]),
        .I1(line_cnt_reg__0[0]),
        .I2(line_cnt_reg__0[1]),
        .I3(line_cnt_reg__0[3]),
        .I4(line_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \line_cnt[5]_i_1 
       (.I0(line_cnt_reg__0[3]),
        .I1(line_cnt_reg__0[1]),
        .I2(line_cnt_reg__0[0]),
        .I3(line_cnt_reg__0[2]),
        .I4(line_cnt_reg__0[4]),
        .I5(line_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \line_cnt[6]_i_1 
       (.I0(\line_cnt[10]_i_9_n_0 ),
        .I1(line_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \line_cnt[7]_i_1 
       (.I0(\line_cnt[10]_i_9_n_0 ),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \line_cnt[8]_i_1 
       (.I0(line_cnt_reg__0[6]),
        .I1(\line_cnt[10]_i_9_n_0 ),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \line_cnt[9]_i_1 
       (.I0(line_cnt_reg__0[7]),
        .I1(\line_cnt[10]_i_9_n_0 ),
        .I2(line_cnt_reg__0[6]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[9]),
        .O(p_0_in__0[9]));
  FDRE \line_cnt_reg[0] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(line_cnt_reg__0[0]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[10] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[10]),
        .Q(line_cnt_reg__0[10]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[1] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(line_cnt_reg__0[1]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[2] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(line_cnt_reg__0[2]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[3] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(line_cnt_reg__0[3]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[4] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(line_cnt_reg__0[4]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[5] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(line_cnt_reg__0[5]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[6] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(line_cnt_reg__0[6]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[7] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(line_cnt_reg__0[7]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[8] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(line_cnt_reg__0[8]),
        .R(\line_cnt[10]_i_1_n_0 ));
  FDRE \line_cnt_reg[9] 
       (.C(pclk),
        .CE(\line_cnt[10]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(line_cnt_reg__0[9]),
        .R(\line_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_cnt[0]_i_1 
       (.I0(pixel_cnt_reg__0[0]),
        .O(\pixel_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEEEEEEEEE)) 
    \pixel_cnt[10]_i_1 
       (.I0(pixel_cnt_reg__0[10]),
        .I1(reset),
        .I2(\pixel_cnt[10]_i_3_n_0 ),
        .I3(\pixel_cnt[10]_i_4_n_0 ),
        .I4(pixel_cnt_reg__0[8]),
        .I5(pixel_cnt_reg__0[9]),
        .O(\pixel_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pixel_cnt[10]_i_2 
       (.I0(pixel_cnt_reg__0[8]),
        .I1(pixel_cnt_reg__0[6]),
        .I2(\pixel_cnt[10]_i_5_n_0 ),
        .I3(pixel_cnt_reg__0[7]),
        .I4(pixel_cnt_reg__0[9]),
        .I5(pixel_cnt_reg__0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \pixel_cnt[10]_i_3 
       (.I0(pixel_cnt_reg__0[7]),
        .I1(pixel_cnt_reg__0[5]),
        .I2(pixel_cnt_reg__0[6]),
        .O(\pixel_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pixel_cnt[10]_i_4 
       (.I0(pixel_cnt_reg__0[2]),
        .I1(pixel_cnt_reg__0[3]),
        .I2(pixel_cnt_reg__0[4]),
        .I3(pixel_cnt_reg__0[1]),
        .I4(pixel_cnt_reg__0[0]),
        .O(\pixel_cnt[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pixel_cnt[10]_i_5 
       (.I0(pixel_cnt_reg__0[5]),
        .I1(pixel_cnt_reg__0[3]),
        .I2(pixel_cnt_reg__0[0]),
        .I3(pixel_cnt_reg__0[1]),
        .I4(pixel_cnt_reg__0[2]),
        .I5(pixel_cnt_reg__0[4]),
        .O(\pixel_cnt[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_cnt[1]_i_1 
       (.I0(pixel_cnt_reg__0[0]),
        .I1(pixel_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pixel_cnt[2]_i_1 
       (.I0(pixel_cnt_reg__0[2]),
        .I1(pixel_cnt_reg__0[1]),
        .I2(pixel_cnt_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pixel_cnt[3]_i_1 
       (.I0(pixel_cnt_reg__0[0]),
        .I1(pixel_cnt_reg__0[1]),
        .I2(pixel_cnt_reg__0[2]),
        .I3(pixel_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pixel_cnt[4]_i_1 
       (.I0(pixel_cnt_reg__0[2]),
        .I1(pixel_cnt_reg__0[1]),
        .I2(pixel_cnt_reg__0[0]),
        .I3(pixel_cnt_reg__0[3]),
        .I4(pixel_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pixel_cnt[5]_i_1 
       (.I0(pixel_cnt_reg__0[3]),
        .I1(pixel_cnt_reg__0[0]),
        .I2(pixel_cnt_reg__0[1]),
        .I3(pixel_cnt_reg__0[2]),
        .I4(pixel_cnt_reg__0[4]),
        .I5(pixel_cnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \pixel_cnt[6]_i_1 
       (.I0(pixel_cnt_reg__0[4]),
        .I1(pixel_cnt_reg__0[2]),
        .I2(hsync_i_i_2_n_0),
        .I3(pixel_cnt_reg__0[3]),
        .I4(pixel_cnt_reg__0[5]),
        .I5(pixel_cnt_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pixel_cnt[7]_i_1 
       (.I0(\pixel_cnt[10]_i_5_n_0 ),
        .I1(pixel_cnt_reg__0[6]),
        .I2(pixel_cnt_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pixel_cnt[8]_i_1 
       (.I0(pixel_cnt_reg__0[6]),
        .I1(\pixel_cnt[10]_i_5_n_0 ),
        .I2(pixel_cnt_reg__0[7]),
        .I3(pixel_cnt_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pixel_cnt[9]_i_1 
       (.I0(pixel_cnt_reg__0[7]),
        .I1(\pixel_cnt[10]_i_5_n_0 ),
        .I2(pixel_cnt_reg__0[6]),
        .I3(pixel_cnt_reg__0[8]),
        .I4(pixel_cnt_reg__0[9]),
        .O(p_0_in[9]));
  FDRE \pixel_cnt_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\pixel_cnt[0]_i_1_n_0 ),
        .Q(pixel_cnt_reg__0[0]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(pixel_cnt_reg__0[10]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pixel_cnt_reg__0[1]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pixel_cnt_reg__0[2]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pixel_cnt_reg__0[3]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pixel_cnt_reg__0[4]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pixel_cnt_reg__0[5]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pixel_cnt_reg__0[6]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(pixel_cnt_reg__0[7]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(pixel_cnt_reg__0[8]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  FDRE \pixel_cnt_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(pixel_cnt_reg__0[9]),
        .R(\pixel_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[0]_INST_0 
       (.I0(valid0__6),
        .I1(line_cnt_reg__0[0]),
        .O(v_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[1]_INST_0 
       (.I0(valid0__6),
        .I1(line_cnt_reg__0[1]),
        .O(v_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[2]_INST_0 
       (.I0(valid0__6),
        .I1(line_cnt_reg__0[2]),
        .O(v_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[3]_INST_0 
       (.I0(valid0__6),
        .I1(line_cnt_reg__0[3]),
        .O(v_cnt[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[4]_INST_0 
       (.I0(valid0__6),
        .I1(line_cnt_reg__0[4]),
        .O(v_cnt[4]));
  LUT6 #(
    .INIT(64'h0111111100000000)) 
    \v_cnt[5]_INST_0 
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[6]),
        .I5(line_cnt_reg__0[5]),
        .O(v_cnt[5]));
  LUT6 #(
    .INIT(64'h0111111100000000)) 
    \v_cnt[6]_INST_0 
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[8]),
        .I4(line_cnt_reg__0[5]),
        .I5(line_cnt_reg__0[6]),
        .O(v_cnt[6]));
  LUT6 #(
    .INIT(64'h0111111100000000)) 
    \v_cnt[7]_INST_0 
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[8]),
        .I3(line_cnt_reg__0[6]),
        .I4(line_cnt_reg__0[5]),
        .I5(line_cnt_reg__0[7]),
        .O(v_cnt[7]));
  LUT6 #(
    .INIT(64'h0111111100000000)) 
    \v_cnt[8]_INST_0 
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[7]),
        .I3(line_cnt_reg__0[6]),
        .I4(line_cnt_reg__0[5]),
        .I5(line_cnt_reg__0[8]),
        .O(v_cnt[8]));
  LUT5 #(
    .INIT(32'h11150000)) 
    valid_INST_0
       (.I0(pixel_cnt_reg__0[10]),
        .I1(pixel_cnt_reg__0[9]),
        .I2(pixel_cnt_reg__0[8]),
        .I3(pixel_cnt_reg__0[7]),
        .I4(valid0__6),
        .O(valid));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    valid_INST_0_i_1
       (.I0(line_cnt_reg__0[5]),
        .I1(line_cnt_reg__0[6]),
        .I2(line_cnt_reg__0[8]),
        .I3(line_cnt_reg__0[7]),
        .I4(line_cnt_reg__0[9]),
        .I5(line_cnt_reg__0[10]),
        .O(valid0__6));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF77777)) 
    vsync_i_i_1
       (.I0(vsync_i_i_2_n_0),
        .I1(vsync_i_i_3_n_0),
        .I2(line_cnt_reg__0[1]),
        .I3(line_cnt_reg__0[2]),
        .I4(line_cnt_reg__0[3]),
        .I5(reset),
        .O(vsync_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    vsync_i_i_2
       (.I0(line_cnt_reg__0[10]),
        .I1(line_cnt_reg__0[9]),
        .I2(line_cnt_reg__0[8]),
        .I3(line_cnt_reg__0[7]),
        .O(vsync_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    vsync_i_i_3
       (.I0(line_cnt_reg__0[6]),
        .I1(line_cnt_reg__0[5]),
        .I2(line_cnt_reg__0[4]),
        .O(vsync_i_i_3_n_0));
  FDRE vsync_i_reg
       (.C(pclk),
        .CE(1'b1),
        .D(vsync_i_i_1_n_0),
        .Q(vsync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
