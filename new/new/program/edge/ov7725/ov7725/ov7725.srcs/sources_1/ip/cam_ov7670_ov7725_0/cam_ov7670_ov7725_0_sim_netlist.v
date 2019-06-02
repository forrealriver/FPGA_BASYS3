// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Dec 01 14:56:27 2016
// Host        : WZJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {F:/1___study/1___study/FPGA/The edge of the
//               recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_sim_netlist.v}
// Design      : cam_ov7670_ov7725_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cam_ov7670_ov7725_0,cam_ov7670_ov7725,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cam_ov7670_ov7725,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module cam_ov7670_ov7725_0
   (pclk,
    vsync,
    href,
    d,
    H_cnt,
    V_cnt,
    addr,
    dout,
    we,
    wclk);
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

  wire \<const0> ;
  wire [8:0]\^H_cnt ;
  wire [16:0]addr;
  wire [7:0]d;
  wire [15:0]dout;
  wire href;
  wire pclk;
  wire vsync;
  wire we;

  assign H_cnt[11] = \<const0> ;
  assign H_cnt[10] = \<const0> ;
  assign H_cnt[9] = \<const0> ;
  assign H_cnt[8:0] = \^H_cnt [8:0];
  assign V_cnt[10] = \<const0> ;
  assign V_cnt[9] = \<const0> ;
  assign V_cnt[8] = \<const0> ;
  assign V_cnt[7] = \<const0> ;
  assign V_cnt[6] = \<const0> ;
  assign V_cnt[5] = \<const0> ;
  assign V_cnt[4] = \<const0> ;
  assign V_cnt[3] = \<const0> ;
  assign V_cnt[2] = \<const0> ;
  assign V_cnt[1] = \<const0> ;
  assign V_cnt[0] = \<const0> ;
  assign wclk = pclk;
  GND GND
       (.G(\<const0> ));
  cam_ov7670_ov7725_0_cam_ov7670_ov7725 inst
       (.H_cnt(\^H_cnt ),
        .Q(addr),
        .d(d),
        .dout(dout),
        .href(href),
        .pclk(pclk),
        .vsync(vsync),
        .we(we));
endmodule

(* ORIG_REF_NAME = "cam_ov7670_ov7725" *) 
module cam_ov7670_ov7725_0_cam_ov7670_ov7725
   (H_cnt,
    Q,
    dout,
    we,
    vsync,
    href,
    pclk,
    d);
  output [8:0]H_cnt;
  output [16:0]Q;
  output [15:0]dout;
  output we;
  input vsync;
  input href;
  input pclk;
  input [7:0]d;

  wire [8:0]H_cnt;
  wire [16:0]Q;
  wire \address[10]_i_1_n_0 ;
  wire \address[11]_i_1_n_0 ;
  wire \address[13]_i_1_n_0 ;
  wire \address[15]_i_1_n_0 ;
  wire \address[16]_i_1_n_0 ;
  wire \address[16]_i_2_n_0 ;
  wire \address_next[0]_i_5_n_0 ;
  wire [16:0]address_next_reg;
  wire \address_next_reg[0]_i_1_n_0 ;
  wire \address_next_reg[0]_i_1_n_1 ;
  wire \address_next_reg[0]_i_1_n_2 ;
  wire \address_next_reg[0]_i_1_n_3 ;
  wire \address_next_reg[0]_i_1_n_4 ;
  wire \address_next_reg[0]_i_1_n_5 ;
  wire \address_next_reg[0]_i_1_n_6 ;
  wire \address_next_reg[0]_i_1_n_7 ;
  wire \address_next_reg[12]_i_1_n_0 ;
  wire \address_next_reg[12]_i_1_n_1 ;
  wire \address_next_reg[12]_i_1_n_2 ;
  wire \address_next_reg[12]_i_1_n_3 ;
  wire \address_next_reg[12]_i_1_n_4 ;
  wire \address_next_reg[12]_i_1_n_5 ;
  wire \address_next_reg[12]_i_1_n_6 ;
  wire \address_next_reg[12]_i_1_n_7 ;
  wire \address_next_reg[16]_i_1_n_7 ;
  wire \address_next_reg[4]_i_1_n_0 ;
  wire \address_next_reg[4]_i_1_n_1 ;
  wire \address_next_reg[4]_i_1_n_2 ;
  wire \address_next_reg[4]_i_1_n_3 ;
  wire \address_next_reg[4]_i_1_n_4 ;
  wire \address_next_reg[4]_i_1_n_5 ;
  wire \address_next_reg[4]_i_1_n_6 ;
  wire \address_next_reg[4]_i_1_n_7 ;
  wire \address_next_reg[8]_i_1_n_0 ;
  wire \address_next_reg[8]_i_1_n_1 ;
  wire \address_next_reg[8]_i_1_n_2 ;
  wire \address_next_reg[8]_i_1_n_3 ;
  wire \address_next_reg[8]_i_1_n_4 ;
  wire \address_next_reg[8]_i_1_n_5 ;
  wire \address_next_reg[8]_i_1_n_6 ;
  wire \address_next_reg[8]_i_1_n_7 ;
  wire [7:0]d;
  wire [15:8]d_latch;
  wire [15:0]dout;
  wire \dout[15]_i_1_n_0 ;
  wire \hcnt[9]_i_2_n_0 ;
  wire [9:1]hcnt_reg__0;
  wire \hcnt_reg_n_0_[0] ;
  wire href;
  wire [9:0]p_0_in;
  wire p_0_in_0;
  wire [15:8]p_1_in;
  wire pclk;
  wire vsync;
  wire we;
  wire we_i_1_n_0;
  wire \wr_hold[0]_i_1_n_0 ;
  wire \wr_hold_reg_n_0_[0] ;
  wire [3:0]\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_address_next_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[0]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[1]),
        .O(H_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[1]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[2]),
        .O(H_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[2]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[3]),
        .O(H_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[3]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[4]),
        .O(H_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[4]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[5]),
        .O(H_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1F00)) 
    \H_cnt[5]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .I3(hcnt_reg__0[6]),
        .O(H_cnt[5]));
  LUT2 #(
    .INIT(4'h4)) 
    \H_cnt[6]_INST_0 
       (.I0(hcnt_reg__0[9]),
        .I1(hcnt_reg__0[7]),
        .O(H_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \H_cnt[7]_INST_0 
       (.I0(hcnt_reg__0[9]),
        .I1(hcnt_reg__0[8]),
        .O(H_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \H_cnt[8]_INST_0 
       (.I0(hcnt_reg__0[8]),
        .I1(hcnt_reg__0[7]),
        .I2(hcnt_reg__0[9]),
        .O(H_cnt[8]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \address[10]_i_1 
       (.I0(address_next_reg[10]),
        .I1(\address[16]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(Q[16]),
        .I4(Q[12]),
        .O(\address[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \address[11]_i_1 
       (.I0(address_next_reg[11]),
        .I1(\address[16]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(Q[16]),
        .I4(Q[12]),
        .O(\address[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \address[13]_i_1 
       (.I0(address_next_reg[13]),
        .I1(\address[16]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(Q[16]),
        .I4(Q[12]),
        .O(\address[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \address[15]_i_1 
       (.I0(vsync),
        .I1(\address[16]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(Q[16]),
        .I4(Q[12]),
        .O(\address[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \address[16]_i_1 
       (.I0(address_next_reg[16]),
        .I1(\address[16]_i_2_n_0 ),
        .I2(Q[13]),
        .I3(Q[16]),
        .I4(Q[12]),
        .O(\address[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8000000000)) 
    \address[16]_i_2 
       (.I0(Q[13]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(Q[15]),
        .I4(Q[14]),
        .I5(Q[16]),
        .O(\address[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address_next[0]_i_5 
       (.I0(address_next_reg[0]),
        .O(\address_next[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[0] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[0]_i_1_n_7 ),
        .Q(address_next_reg[0]),
        .R(vsync));
  CARRY4 \address_next_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\address_next_reg[0]_i_1_n_0 ,\address_next_reg[0]_i_1_n_1 ,\address_next_reg[0]_i_1_n_2 ,\address_next_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_next_reg[0]_i_1_n_4 ,\address_next_reg[0]_i_1_n_5 ,\address_next_reg[0]_i_1_n_6 ,\address_next_reg[0]_i_1_n_7 }),
        .S({address_next_reg[3:1],\address_next[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[10] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[8]_i_1_n_5 ),
        .Q(address_next_reg[10]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[11] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[8]_i_1_n_4 ),
        .Q(address_next_reg[11]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[12] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[12]_i_1_n_7 ),
        .Q(address_next_reg[12]),
        .R(vsync));
  CARRY4 \address_next_reg[12]_i_1 
       (.CI(\address_next_reg[8]_i_1_n_0 ),
        .CO({\address_next_reg[12]_i_1_n_0 ,\address_next_reg[12]_i_1_n_1 ,\address_next_reg[12]_i_1_n_2 ,\address_next_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[12]_i_1_n_4 ,\address_next_reg[12]_i_1_n_5 ,\address_next_reg[12]_i_1_n_6 ,\address_next_reg[12]_i_1_n_7 }),
        .S(address_next_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[13] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[12]_i_1_n_6 ),
        .Q(address_next_reg[13]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[14] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[12]_i_1_n_5 ),
        .Q(address_next_reg[14]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[15] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[12]_i_1_n_4 ),
        .Q(address_next_reg[15]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[16] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[16]_i_1_n_7 ),
        .Q(address_next_reg[16]),
        .R(vsync));
  CARRY4 \address_next_reg[16]_i_1 
       (.CI(\address_next_reg[12]_i_1_n_0 ),
        .CO(\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_next_reg[16]_i_1_O_UNCONNECTED [3:1],\address_next_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,address_next_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[1] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[0]_i_1_n_6 ),
        .Q(address_next_reg[1]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[2] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[0]_i_1_n_5 ),
        .Q(address_next_reg[2]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[3] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[0]_i_1_n_4 ),
        .Q(address_next_reg[3]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[4] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[4]_i_1_n_7 ),
        .Q(address_next_reg[4]),
        .R(vsync));
  CARRY4 \address_next_reg[4]_i_1 
       (.CI(\address_next_reg[0]_i_1_n_0 ),
        .CO({\address_next_reg[4]_i_1_n_0 ,\address_next_reg[4]_i_1_n_1 ,\address_next_reg[4]_i_1_n_2 ,\address_next_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[4]_i_1_n_4 ,\address_next_reg[4]_i_1_n_5 ,\address_next_reg[4]_i_1_n_6 ,\address_next_reg[4]_i_1_n_7 }),
        .S(address_next_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[5] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[4]_i_1_n_6 ),
        .Q(address_next_reg[5]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[6] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[4]_i_1_n_5 ),
        .Q(address_next_reg[6]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[7] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[4]_i_1_n_4 ),
        .Q(address_next_reg[7]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[8] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[8]_i_1_n_7 ),
        .Q(address_next_reg[8]),
        .R(vsync));
  CARRY4 \address_next_reg[8]_i_1 
       (.CI(\address_next_reg[4]_i_1_n_0 ),
        .CO({\address_next_reg[8]_i_1_n_0 ,\address_next_reg[8]_i_1_n_1 ,\address_next_reg[8]_i_1_n_2 ,\address_next_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[8]_i_1_n_4 ,\address_next_reg[8]_i_1_n_5 ,\address_next_reg[8]_i_1_n_6 ,\address_next_reg[8]_i_1_n_7 }),
        .S(address_next_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \address_next_reg[9] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(\address_next_reg[8]_i_1_n_6 ),
        .Q(address_next_reg[9]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[0]),
        .Q(Q[0]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(pclk),
        .CE(1'b1),
        .D(\address[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(pclk),
        .CE(1'b1),
        .D(\address[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[12]),
        .Q(Q[12]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(pclk),
        .CE(1'b1),
        .D(\address[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[14]),
        .Q(Q[14]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[15]),
        .Q(Q[15]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(pclk),
        .CE(1'b1),
        .D(\address[16]_i_1_n_0 ),
        .Q(Q[16]),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[1]),
        .Q(Q[1]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[2]),
        .Q(Q[2]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[3]),
        .Q(Q[3]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[4]),
        .Q(Q[4]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[5]),
        .Q(Q[5]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[6]),
        .Q(Q[6]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[7]),
        .Q(Q[7]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[8]),
        .Q(Q[8]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(pclk),
        .CE(1'b1),
        .D(address_next_reg[9]),
        .Q(Q[9]),
        .R(\address[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[0] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[0]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[10] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[10]),
        .Q(d_latch[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[11] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[11]),
        .Q(d_latch[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[12] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[12]),
        .Q(d_latch[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[13] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[13]),
        .Q(d_latch[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[14] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[14]),
        .Q(d_latch[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[15] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[15]),
        .Q(d_latch[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[1] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[1]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[2] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[2]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[3] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[3]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[4] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[4]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[5] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[5]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[6] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[6]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[7] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(d[7]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[8] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[8]),
        .Q(d_latch[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_latch_reg[9] 
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_1_in[9]),
        .Q(d_latch[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[15]_i_1 
       (.I0(p_0_in_0),
        .I1(vsync),
        .O(\dout[15]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(pclk),
        .CE(\dout[15]_i_1_n_0 ),
        .D(d_latch[9]),
        .Q(dout[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hcnt[0]_i_1 
       (.I0(\hcnt_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcnt[1]_i_1 
       (.I0(\hcnt_reg_n_0_[0] ),
        .I1(hcnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcnt[2]_i_1 
       (.I0(\hcnt_reg_n_0_[0] ),
        .I1(hcnt_reg__0[1]),
        .I2(hcnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcnt[3]_i_1 
       (.I0(hcnt_reg__0[1]),
        .I1(\hcnt_reg_n_0_[0] ),
        .I2(hcnt_reg__0[2]),
        .I3(hcnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcnt[4]_i_1 
       (.I0(hcnt_reg__0[2]),
        .I1(\hcnt_reg_n_0_[0] ),
        .I2(hcnt_reg__0[1]),
        .I3(hcnt_reg__0[3]),
        .I4(hcnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcnt[5]_i_1 
       (.I0(hcnt_reg__0[3]),
        .I1(hcnt_reg__0[1]),
        .I2(\hcnt_reg_n_0_[0] ),
        .I3(hcnt_reg__0[2]),
        .I4(hcnt_reg__0[4]),
        .I5(hcnt_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcnt[6]_i_1 
       (.I0(\hcnt[9]_i_2_n_0 ),
        .I1(hcnt_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcnt[7]_i_1 
       (.I0(\hcnt[9]_i_2_n_0 ),
        .I1(hcnt_reg__0[6]),
        .I2(hcnt_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcnt[8]_i_1 
       (.I0(hcnt_reg__0[6]),
        .I1(\hcnt[9]_i_2_n_0 ),
        .I2(hcnt_reg__0[7]),
        .I3(hcnt_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcnt[9]_i_1 
       (.I0(hcnt_reg__0[7]),
        .I1(\hcnt[9]_i_2_n_0 ),
        .I2(hcnt_reg__0[6]),
        .I3(hcnt_reg__0[8]),
        .I4(hcnt_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcnt[9]_i_2 
       (.I0(hcnt_reg__0[5]),
        .I1(hcnt_reg__0[3]),
        .I2(hcnt_reg__0[1]),
        .I3(\hcnt_reg_n_0_[0] ),
        .I4(hcnt_reg__0[2]),
        .I5(hcnt_reg__0[4]),
        .O(\hcnt[9]_i_2_n_0 ));
  FDRE \hcnt_reg[0] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[0]),
        .Q(\hcnt_reg_n_0_[0] ),
        .R(vsync));
  FDRE \hcnt_reg[1] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[1]),
        .Q(hcnt_reg__0[1]),
        .R(vsync));
  FDRE \hcnt_reg[2] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[2]),
        .Q(hcnt_reg__0[2]),
        .R(vsync));
  FDRE \hcnt_reg[3] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[3]),
        .Q(hcnt_reg__0[3]),
        .R(vsync));
  FDRE \hcnt_reg[4] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[4]),
        .Q(hcnt_reg__0[4]),
        .R(vsync));
  FDRE \hcnt_reg[5] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[5]),
        .Q(hcnt_reg__0[5]),
        .R(vsync));
  FDRE \hcnt_reg[6] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[6]),
        .Q(hcnt_reg__0[6]),
        .R(vsync));
  FDRE \hcnt_reg[7] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[7]),
        .Q(hcnt_reg__0[7]),
        .R(vsync));
  FDRE \hcnt_reg[8] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[8]),
        .Q(hcnt_reg__0[8]),
        .R(vsync));
  FDRE \hcnt_reg[9] 
       (.C(pclk),
        .CE(href),
        .D(p_0_in[9]),
        .Q(hcnt_reg__0[9]),
        .R(vsync));
  LUT1 #(
    .INIT(2'h1)) 
    we_i_1
       (.I0(vsync),
        .O(we_i_1_n_0));
  FDRE we_reg
       (.C(pclk),
        .CE(we_i_1_n_0),
        .D(p_0_in_0),
        .Q(we),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_hold[0]_i_1 
       (.I0(href),
        .I1(\wr_hold_reg_n_0_[0] ),
        .O(\wr_hold[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_hold_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\wr_hold[0]_i_1_n_0 ),
        .Q(\wr_hold_reg_n_0_[0] ),
        .R(vsync));
  FDRE #(
    .INIT(1'b0)) 
    \wr_hold_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(\wr_hold_reg_n_0_[0] ),
        .Q(p_0_in_0),
        .R(vsync));
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
