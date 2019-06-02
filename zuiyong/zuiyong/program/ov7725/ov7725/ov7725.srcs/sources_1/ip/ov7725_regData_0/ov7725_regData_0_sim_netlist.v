// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sat Nov 12 15:17:17 2016
// Host        : WZJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_sim_netlist.v
// Design      : ov7725_regData_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ov7725_regData_0,ov7725_regData,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ov7725_regData,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module ov7725_regData_0
   (LUT_INDEX,
    LUT_DATA,
    Slave_Addr);
  input [7:0]LUT_INDEX;
  output [15:0]LUT_DATA;
  output [7:0]Slave_Addr;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:2]\^LUT_DATA ;
  wire \LUT_DATA[12]_INST_0_i_1_n_0 ;
  wire [7:0]LUT_INDEX;

  assign LUT_DATA[15] = \<const0> ;
  assign LUT_DATA[14] = \<const0> ;
  assign LUT_DATA[13] = \<const0> ;
  assign LUT_DATA[12:11] = \^LUT_DATA [12:11];
  assign LUT_DATA[10] = \^LUT_DATA [11];
  assign LUT_DATA[9:6] = \^LUT_DATA [9:6];
  assign LUT_DATA[5] = \<const0> ;
  assign LUT_DATA[4] = \^LUT_DATA [11];
  assign LUT_DATA[3] = \<const0> ;
  assign LUT_DATA[2] = \^LUT_DATA [2];
  assign LUT_DATA[1] = \^LUT_DATA [2];
  assign LUT_DATA[0] = \<const0> ;
  assign Slave_Addr[7] = \<const0> ;
  assign Slave_Addr[6] = \<const1> ;
  assign Slave_Addr[5] = \<const0> ;
  assign Slave_Addr[4] = \<const0> ;
  assign Slave_Addr[3] = \<const0> ;
  assign Slave_Addr[2] = \<const0> ;
  assign Slave_Addr[1] = \<const1> ;
  assign Slave_Addr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h0026)) 
    \LUT_DATA[12]_INST_0 
       (.I0(LUT_INDEX[2]),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[0]),
        .I3(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .O(\^LUT_DATA [12]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LUT_DATA[12]_INST_0_i_1 
       (.I0(LUT_INDEX[5]),
        .I1(LUT_INDEX[7]),
        .I2(LUT_INDEX[6]),
        .I3(LUT_INDEX[4]),
        .I4(LUT_INDEX[3]),
        .O(\LUT_DATA[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \LUT_DATA[1]_INST_0 
       (.I0(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[2]),
        .I3(LUT_INDEX[0]),
        .O(\^LUT_DATA [2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \LUT_DATA[4]_INST_0 
       (.I0(LUT_INDEX[2]),
        .I1(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .I2(LUT_INDEX[1]),
        .I3(LUT_INDEX[0]),
        .O(\^LUT_DATA [11]));
  LUT4 #(
    .INIT(16'h0060)) 
    \LUT_DATA[6]_INST_0 
       (.I0(LUT_INDEX[2]),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[0]),
        .I3(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .O(\^LUT_DATA [6]));
  LUT3 #(
    .INIT(8'h04)) 
    \LUT_DATA[7]_INST_0 
       (.I0(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[2]),
        .O(\^LUT_DATA [7]));
  LUT4 #(
    .INIT(16'h0010)) 
    \LUT_DATA[8]_INST_0 
       (.I0(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[2]),
        .I3(LUT_INDEX[0]),
        .O(\^LUT_DATA [8]));
  LUT4 #(
    .INIT(16'h0024)) 
    \LUT_DATA[9]_INST_0 
       (.I0(LUT_INDEX[2]),
        .I1(LUT_INDEX[1]),
        .I2(LUT_INDEX[0]),
        .I3(\LUT_DATA[12]_INST_0_i_1_n_0 ),
        .O(\^LUT_DATA [9]));
  VCC VCC
       (.P(\<const1> ));
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
