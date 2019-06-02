-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Dec 01 14:56:27 2016
-- Host        : WZJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {F:/1___study/1___study/FPGA/The edge of the
--               recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/IICctrl_0/IICctrl_0_sim_netlist.vhdl}
-- Design      : IICctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0_I2C_Controller is
  port (
    I2C_SCLK : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I2C_SDAT : inout STD_LOGIC;
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    mI2C_WR_reg : in STD_LOGIC;
    mI2C_GO_reg : in STD_LOGIC;
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i2c_en_r1 : in STD_LOGIC;
    i2c_en_r0 : in STD_LOGIC;
    mI2C_CTRL_CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \LUT_INDEX_reg[4]\ : in STD_LOGIC;
    \mSetup_ST_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IICctrl_0_I2C_Controller : entity is "I2C_Controller";
end IICctrl_0_I2C_Controller;

architecture STRUCTURE of IICctrl_0_I2C_Controller is
  signal ACKR13_out : STD_LOGIC;
  signal ACKR1_i_1_n_0 : STD_LOGIC;
  signal ACKR1_i_3_n_0 : STD_LOGIC;
  signal ACKR1_reg_n_0 : STD_LOGIC;
  signal ACKR25_out : STD_LOGIC;
  signal ACKR2_i_1_n_0 : STD_LOGIC;
  signal ACKR2_i_3_n_0 : STD_LOGIC;
  signal ACKR2_reg_n_0 : STD_LOGIC;
  signal ACKR3_i_1_n_0 : STD_LOGIC;
  signal ACKR3_i_2_n_0 : STD_LOGIC;
  signal ACKR3_i_3_n_0 : STD_LOGIC;
  signal ACKR3_i_4_n_0 : STD_LOGIC;
  signal ACKR3_i_5_n_0 : STD_LOGIC;
  signal ACKR3_i_6_n_0 : STD_LOGIC;
  signal ACKR3_i_7_n_0 : STD_LOGIC;
  signal ACKR3_i_8_n_0 : STD_LOGIC;
  signal ACKR3_reg_n_0 : STD_LOGIC;
  signal ACKW10_out : STD_LOGIC;
  signal ACKW1_i_1_n_0 : STD_LOGIC;
  signal ACKW1_reg_n_0 : STD_LOGIC;
  signal ACKW22_out : STD_LOGIC;
  signal ACKW2_i_1_n_0 : STD_LOGIC;
  signal ACKW2_reg_n_0 : STD_LOGIC;
  signal ACKW3_i_1_n_0 : STD_LOGIC;
  signal ACKW3_i_2_n_0 : STD_LOGIC;
  signal ACKW3_i_3_n_0 : STD_LOGIC;
  signal ACKW3_i_4_n_0 : STD_LOGIC;
  signal ACKW3_i_5_n_0 : STD_LOGIC;
  signal ACKW3_reg_n_0 : STD_LOGIC;
  signal END_i_1_n_0 : STD_LOGIC;
  signal END_i_2_n_0 : STD_LOGIC;
  signal END_i_3_n_0 : STD_LOGIC;
  signal I2C_BIT6_out : STD_LOGIC;
  signal I2C_BIT_i_10_n_0 : STD_LOGIC;
  signal I2C_BIT_i_11_n_0 : STD_LOGIC;
  signal I2C_BIT_i_12_n_0 : STD_LOGIC;
  signal I2C_BIT_i_13_n_0 : STD_LOGIC;
  signal I2C_BIT_i_14_n_0 : STD_LOGIC;
  signal I2C_BIT_i_15_n_0 : STD_LOGIC;
  signal I2C_BIT_i_16_n_0 : STD_LOGIC;
  signal I2C_BIT_i_17_n_0 : STD_LOGIC;
  signal I2C_BIT_i_18_n_0 : STD_LOGIC;
  signal I2C_BIT_i_19_n_0 : STD_LOGIC;
  signal I2C_BIT_i_1_n_0 : STD_LOGIC;
  signal I2C_BIT_i_20_n_0 : STD_LOGIC;
  signal I2C_BIT_i_21_n_0 : STD_LOGIC;
  signal I2C_BIT_i_22_n_0 : STD_LOGIC;
  signal I2C_BIT_i_23_n_0 : STD_LOGIC;
  signal I2C_BIT_i_24_n_0 : STD_LOGIC;
  signal I2C_BIT_i_25_n_0 : STD_LOGIC;
  signal I2C_BIT_i_26_n_0 : STD_LOGIC;
  signal I2C_BIT_i_27_n_0 : STD_LOGIC;
  signal I2C_BIT_i_29_n_0 : STD_LOGIC;
  signal I2C_BIT_i_2_n_0 : STD_LOGIC;
  signal I2C_BIT_i_30_n_0 : STD_LOGIC;
  signal I2C_BIT_i_31_n_0 : STD_LOGIC;
  signal I2C_BIT_i_32_n_0 : STD_LOGIC;
  signal I2C_BIT_i_3_n_0 : STD_LOGIC;
  signal I2C_BIT_i_6_n_0 : STD_LOGIC;
  signal I2C_BIT_i_8_n_0 : STD_LOGIC;
  signal I2C_BIT_i_9_n_0 : STD_LOGIC;
  signal I2C_BIT_reg_i_28_n_0 : STD_LOGIC;
  signal I2C_BIT_reg_i_5_n_0 : STD_LOGIC;
  signal I2C_BIT_reg_i_7_n_0 : STD_LOGIC;
  signal I2C_BIT_reg_n_0 : STD_LOGIC;
  signal I2C_SCLK_INST_0_i_1_n_0 : STD_LOGIC;
  signal I2C_SCLK_INST_0_i_2_n_0 : STD_LOGIC;
  signal I2C_SCLK_INST_0_i_3_n_0 : STD_LOGIC;
  signal I2C_SCLK_INST_0_i_4_n_0 : STD_LOGIC;
  signal I2C_SDAT_INST_0_i_2_n_0 : STD_LOGIC;
  signal I2C_SDAT_INST_0_i_3_n_0 : STD_LOGIC;
  signal I2C_SDAT_INST_0_i_4_n_0 : STD_LOGIC;
  signal I2C_SDAT_INST_0_i_5_n_0 : STD_LOGIC;
  signal I2C_SDAT_INST_0_i_6_n_0 : STD_LOGIC;
  signal SCLK_i_10_n_0 : STD_LOGIC;
  signal SCLK_i_1_n_0 : STD_LOGIC;
  signal SCLK_i_2_n_0 : STD_LOGIC;
  signal SCLK_i_3_n_0 : STD_LOGIC;
  signal SCLK_i_4_n_0 : STD_LOGIC;
  signal SCLK_i_5_n_0 : STD_LOGIC;
  signal SCLK_i_6_n_0 : STD_LOGIC;
  signal SCLK_i_7_n_0 : STD_LOGIC;
  signal SCLK_i_8_n_0 : STD_LOGIC;
  signal SCLK_i_9_n_0 : STD_LOGIC;
  signal SCLK_reg_n_0 : STD_LOGIC;
  signal SDO : STD_LOGIC;
  signal SD_COUNTER : STD_LOGIC;
  signal \SD_COUNTER[4]_i_2_n_0\ : STD_LOGIC;
  signal \SD_COUNTER[5]_i_3_n_0\ : STD_LOGIC;
  signal \SD_COUNTER[5]_i_4_n_0\ : STD_LOGIC;
  signal \SD_COUNTER[5]_i_5_n_0\ : STD_LOGIC;
  signal \SD_COUNTER_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal g0_b0_n_0 : STD_LOGIC;
  signal mI2C_END : STD_LOGIC;
  signal \mSetup_ST[1]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ACKR3_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ACKR3_i_6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ACKR3_i_7 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ACKR3_i_8 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ACKW2_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ACKW3_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ACKW3_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of END_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of I2C_BIT_i_13 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of I2C_BIT_i_22 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of I2C_BIT_i_25 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of I2C_BIT_i_27 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of I2C_SDAT_INST_0_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of I2C_SDAT_INST_0_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of SCLK_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of SCLK_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of SCLK_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of SCLK_i_8 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SD_COUNTER[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \SD_COUNTER[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SD_COUNTER[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SD_COUNTER[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SD_COUNTER[5]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mSetup_ST[0]_i_1\ : label is "soft_lutpair9";
begin
ACKR1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFBFF0000"
    )
        port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => ACKR13_out,
      I5 => ACKR1_reg_n_0,
      O => ACKR1_i_1_n_0
    );
ACKR1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404044"
    )
        port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => ACKR3_i_4_n_0,
      I3 => mI2C_WR_reg,
      I4 => ACKR1_i_3_n_0,
      O => ACKR13_out
    );
ACKR1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFC"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(1),
      O => ACKR1_i_3_n_0
    );
ACKR1_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKR1_i_1_n_0,
      PRE => rst,
      Q => ACKR1_reg_n_0
    );
ACKR2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFBFF0000"
    )
        port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => ACKR25_out,
      I5 => ACKR2_reg_n_0,
      O => ACKR2_i_1_n_0
    );
ACKR2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404044"
    )
        port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => ACKR3_i_4_n_0,
      I3 => mI2C_WR_reg,
      I4 => ACKR2_i_3_n_0,
      O => ACKR25_out
    );
ACKR2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFC"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(2),
      O => ACKR2_i_3_n_0
    );
ACKR2_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKR2_i_1_n_0,
      PRE => rst,
      Q => ACKR2_reg_n_0
    );
ACKR3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFBFB000B0B0"
    )
        port map (
      I0 => ACKR3_i_2_n_0,
      I1 => ACKR3_i_3_n_0,
      I2 => \SD_COUNTER[5]_i_3_n_0\,
      I3 => ACKR3_i_4_n_0,
      I4 => ACKR3_i_5_n_0,
      I5 => ACKR3_reg_n_0,
      O => ACKR3_i_1_n_0
    );
ACKR3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(5),
      O => ACKR3_i_2_n_0
    );
ACKR3_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mI2C_GO_reg,
      I1 => mI2C_WR_reg,
      O => ACKR3_i_3_n_0
    );
ACKR3_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => mI2C_WR_reg,
      I1 => ACKR3_i_6_n_0,
      I2 => ACKR3_i_7_n_0,
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => mI2C_GO_reg,
      O => ACKR3_i_4_n_0
    );
ACKR3_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7A"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => ACKR3_i_8_n_0,
      O => ACKR3_i_5_n_0
    );
ACKR3_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(3),
      O => ACKR3_i_6_n_0
    );
ACKR3_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      O => ACKR3_i_7_n_0
    );
ACKR3_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mI2C_WR_reg,
      I1 => \SD_COUNTER_reg__0\(2),
      O => ACKR3_i_8_n_0
    );
ACKR3_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKR3_i_1_n_0,
      PRE => rst,
      Q => ACKR3_reg_n_0
    );
ACKW1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFBFFF0000"
    )
        port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => ACKW10_out,
      I5 => ACKW1_reg_n_0,
      O => ACKW1_i_1_n_0
    );
ACKW1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444040"
    )
        port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => ACKW3_i_3_n_0,
      I3 => ACKR1_i_3_n_0,
      I4 => mI2C_WR_reg,
      O => ACKW10_out
    );
ACKW1_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKW1_i_1_n_0,
      PRE => rst,
      Q => ACKW1_reg_n_0
    );
ACKW2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFBFFF0000"
    )
        port map (
      I0 => I2C_SDAT,
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => ACKW22_out,
      I5 => ACKW2_reg_n_0,
      O => ACKW2_i_1_n_0
    );
ACKW2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444040"
    )
        port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => ACKW3_i_3_n_0,
      I3 => ACKR2_i_3_n_0,
      I4 => mI2C_WR_reg,
      O => ACKW22_out
    );
ACKW2_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKW2_i_1_n_0,
      PRE => rst,
      Q => ACKW2_reg_n_0
    );
ACKW3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEFE000E0E0"
    )
        port map (
      I0 => ACKW3_i_2_n_0,
      I1 => ACKR3_i_2_n_0,
      I2 => \SD_COUNTER[5]_i_3_n_0\,
      I3 => ACKW3_i_3_n_0,
      I4 => ACKW3_i_4_n_0,
      I5 => ACKW3_reg_n_0,
      O => ACKW3_i_1_n_0
    );
ACKW3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => mI2C_GO_reg,
      I1 => mI2C_WR_reg,
      O => ACKW3_i_2_n_0
    );
ACKW3_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => mI2C_WR_reg,
      I1 => ACKR3_i_6_n_0,
      I2 => ACKR3_i_7_n_0,
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => mI2C_GO_reg,
      O => ACKW3_i_3_n_0
    );
ACKW3_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFDFFFDF"
    )
        port map (
      I0 => mI2C_WR_reg,
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => ACKW3_i_5_n_0,
      I3 => \SD_COUNTER_reg__0\(5),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(1),
      O => ACKW3_i_4_n_0
    );
ACKW3_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(4),
      O => ACKW3_i_5_n_0
    );
ACKW3_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => ACKW3_i_1_n_0,
      PRE => rst,
      Q => ACKW3_reg_n_0
    );
END_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FF00000800"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => mI2C_GO_reg,
      I2 => i2c_en_r0,
      I3 => i2c_en_r1,
      I4 => END_i_2_n_0,
      I5 => mI2C_END,
      O => END_i_1_n_0
    );
END_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8AAAAAAAAA88"
    )
        port map (
      I0 => mI2C_GO_reg,
      I1 => END_i_3_n_0,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(5),
      O => END_i_2_n_0
    );
END_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFDEE"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(4),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => mI2C_WR_reg,
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(1),
      O => END_i_3_n_0
    );
END_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => END_i_1_n_0,
      Q => mI2C_END
    );
I2C_BIT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFFBBFB0000"
    )
        port map (
      I0 => I2C_BIT_i_2_n_0,
      I1 => mI2C_GO_reg,
      I2 => mI2C_WR_reg,
      I3 => I2C_BIT_i_3_n_0,
      I4 => I2C_BIT6_out,
      I5 => I2C_BIT_reg_n_0,
      O => I2C_BIT_i_1_n_0
    );
I2C_BIT_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0440044"
    )
        port map (
      I0 => SCLK_i_10_n_0,
      I1 => LUT_DATA(7),
      I2 => I2C_BIT_i_22_n_0,
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => I2C_BIT_i_23_n_0,
      O => I2C_BIT_i_10_n_0
    );
I2C_BIT_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222222202222"
    )
        port map (
      I0 => I2C_BIT_i_24_n_0,
      I1 => I2C_BIT_i_25_n_0,
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => Slave_Addr(7),
      I5 => \SD_COUNTER_reg__0\(5),
      O => I2C_BIT_i_11_n_0
    );
I2C_BIT_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000220F"
    )
        port map (
      I0 => I2C_BIT_i_26_n_0,
      I1 => I2C_BIT_i_27_n_0,
      I2 => I2C_BIT_reg_i_28_n_0,
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => I2C_BIT_i_29_n_0,
      O => I2C_BIT_i_12_n_0
    );
I2C_BIT_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80001"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(5),
      O => I2C_BIT_i_13_n_0
    );
I2C_BIT_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAF6FFFAFFFFF6"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(4),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => I2C_BIT_i_30_n_0,
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(1),
      O => I2C_BIT_i_14_n_0
    );
I2C_BIT_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000F000007F0"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(2),
      O => I2C_BIT_i_15_n_0
    );
I2C_BIT_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Slave_Addr(1),
      I1 => Slave_Addr(0),
      I2 => I2C_BIT_i_18_n_0,
      I3 => Slave_Addr(3),
      I4 => I2C_BIT_i_21_n_0,
      I5 => Slave_Addr(2),
      O => I2C_BIT_i_16_n_0
    );
I2C_BIT_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => LUT_DATA(13),
      I1 => LUT_DATA(12),
      I2 => I2C_BIT_i_18_n_0,
      I3 => LUT_DATA(15),
      I4 => I2C_BIT_i_21_n_0,
      I5 => LUT_DATA(14),
      O => I2C_BIT_i_17_n_0
    );
I2C_BIT_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33379EBE8EEEE6AA"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(3),
      O => I2C_BIT_i_18_n_0
    );
I2C_BIT_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAFF"
    )
        port map (
      I0 => Slave_Addr(6),
      I1 => Slave_Addr(7),
      I2 => I2C_BIT_i_21_n_0,
      I3 => I2C_BIT_i_15_n_0,
      O => I2C_BIT_i_19_n_0
    );
I2C_BIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => I2C_BIT_reg_i_5_n_0,
      I1 => I2C_BIT_i_6_n_0,
      I2 => I2C_BIT_reg_i_7_n_0,
      I3 => I2C_BIT_i_8_n_0,
      I4 => I2C_BIT_i_9_n_0,
      I5 => mI2C_WR_reg,
      O => I2C_BIT_i_2_n_0
    );
I2C_BIT_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => I2C_BIT_i_15_n_0,
      I1 => Slave_Addr(4),
      I2 => I2C_BIT_i_21_n_0,
      I3 => Slave_Addr(5),
      O => I2C_BIT_i_20_n_0
    );
I2C_BIT_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"184A1DF5002A5554"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(4),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(5),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(1),
      O => I2C_BIT_i_21_n_0
    );
I2C_BIT_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => LUT_DATA(3),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => LUT_DATA(8),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => Slave_Addr(5),
      O => I2C_BIT_i_22_n_0
    );
I2C_BIT_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044400000004000"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => LUT_DATA(12),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => Slave_Addr(1),
      O => I2C_BIT_i_23_n_0
    );
I2C_BIT_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABFBFFFFABFB"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => LUT_DATA(1),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => Slave_Addr(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => LUT_DATA(14),
      O => I2C_BIT_i_24_n_0
    );
I2C_BIT_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => LUT_DATA(5),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => LUT_DATA(10),
      O => I2C_BIT_i_25_n_0
    );
I2C_BIT_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFBFBFBABFB"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => Slave_Addr(0),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => LUT_DATA(11),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => LUT_DATA(6),
      O => I2C_BIT_i_26_n_0
    );
I2C_BIT_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0002222"
    )
        port map (
      I0 => Slave_Addr(4),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => LUT_DATA(2),
      I4 => \SD_COUNTER_reg__0\(4),
      O => I2C_BIT_i_27_n_0
    );
I2C_BIT_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20032000"
    )
        port map (
      I0 => LUT_DATA(15),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => LUT_DATA(0),
      O => I2C_BIT_i_29_n_0
    );
I2C_BIT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF540054"
    )
        port map (
      I0 => I2C_BIT_i_10_n_0,
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => I2C_BIT_i_11_n_0,
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => I2C_BIT_i_12_n_0,
      I5 => I2C_BIT_i_13_n_0,
      O => I2C_BIT_i_3_n_0
    );
I2C_BIT_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4FFFAFFFFFFF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(1),
      O => I2C_BIT_i_30_n_0
    );
I2C_BIT_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => Slave_Addr(2),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => Slave_Addr(6),
      I3 => \SD_COUNTER_reg__0\(5),
      O => I2C_BIT_i_31_n_0
    );
I2C_BIT_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => LUT_DATA(4),
      I1 => LUT_DATA(9),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => LUT_DATA(13),
      I4 => \SD_COUNTER_reg__0\(3),
      O => I2C_BIT_i_32_n_0
    );
I2C_BIT_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8AA0000"
    )
        port map (
      I0 => I2C_BIT_i_14_n_0,
      I1 => g0_b0_n_0,
      I2 => mI2C_WR_reg,
      I3 => mI2C_GO_reg,
      I4 => i2c_en_r1,
      I5 => i2c_en_r0,
      O => I2C_BIT6_out
    );
I2C_BIT_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000401B0000C0330"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(0),
      O => I2C_BIT_i_6_n_0
    );
I2C_BIT_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404000000"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => \SD_COUNTER_reg__0\(2),
      O => I2C_BIT_i_8_n_0
    );
I2C_BIT_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => LUT_DATA(9),
      I1 => LUT_DATA(8),
      I2 => I2C_BIT_i_18_n_0,
      I3 => LUT_DATA(11),
      I4 => I2C_BIT_i_21_n_0,
      I5 => LUT_DATA(10),
      O => I2C_BIT_i_9_n_0
    );
I2C_BIT_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => I2C_BIT_i_1_n_0,
      PRE => rst,
      Q => I2C_BIT_reg_n_0
    );
I2C_BIT_reg_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => I2C_BIT_i_31_n_0,
      I1 => I2C_BIT_i_32_n_0,
      O => I2C_BIT_reg_i_28_n_0,
      S => \SD_COUNTER_reg__0\(4)
    );
I2C_BIT_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => I2C_BIT_i_16_n_0,
      I1 => I2C_BIT_i_17_n_0,
      O => I2C_BIT_reg_i_5_n_0,
      S => I2C_BIT_i_15_n_0
    );
I2C_BIT_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => I2C_BIT_i_19_n_0,
      I1 => I2C_BIT_i_20_n_0,
      O => I2C_BIT_reg_i_7_n_0,
      S => I2C_BIT_i_18_n_0
    );
I2C_SCLK_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => SCLK_reg_n_0,
      I1 => I2C_SCLK_INST_0_i_1_n_0,
      I2 => mI2C_GO_reg,
      I3 => mI2C_CTRL_CLK,
      I4 => mI2C_WR_reg,
      I5 => I2C_SCLK_INST_0_i_2_n_0,
      O => I2C_SCLK
    );
I2C_SCLK_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEA9ABE9A9E9"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => \SD_COUNTER_reg__0\(2),
      O => I2C_SCLK_INST_0_i_1_n_0
    );
I2C_SCLK_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBAAAA8088AAAA"
    )
        port map (
      I0 => SCLK_reg_n_0,
      I1 => I2C_SCLK_INST_0_i_3_n_0,
      I2 => I2C_SCLK_INST_0_i_4_n_0,
      I3 => \SD_COUNTER_reg__0\(5),
      I4 => mI2C_GO_reg,
      I5 => mI2C_CTRL_CLK,
      O => I2C_SCLK_INST_0_i_2_n_0
    );
I2C_SCLK_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE84FEC5F8C7DCC7"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(1),
      I5 => \SD_COUNTER_reg__0\(2),
      O => I2C_SCLK_INST_0_i_3_n_0
    );
I2C_SCLK_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAA000002ED02ED"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(4),
      O => I2C_SCLK_INST_0_i_4_n_0
    );
I2C_SDAT_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => I2C_BIT_reg_n_0,
      I1 => SDO,
      O => I2C_SDAT
    );
I2C_SDAT_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0C880800008808"
    )
        port map (
      I0 => I2C_SDAT_INST_0_i_2_n_0,
      I1 => I2C_SDAT_INST_0_i_3_n_0,
      I2 => I2C_SDAT_INST_0_i_4_n_0,
      I3 => I2C_SDAT_INST_0_i_5_n_0,
      I4 => mI2C_WR_reg,
      I5 => I2C_SDAT_INST_0_i_6_n_0,
      O => SDO
    );
I2C_SDAT_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FE0FFFFFFFFFF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(5),
      O => I2C_SDAT_INST_0_i_2_n_0
    );
I2C_SDAT_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(5),
      I4 => \SD_COUNTER_reg__0\(4),
      O => I2C_SDAT_INST_0_i_3_n_0
    );
I2C_SDAT_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      O => I2C_SDAT_INST_0_i_4_n_0
    );
I2C_SDAT_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDF7"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(2),
      I4 => mI2C_WR_reg,
      O => I2C_SDAT_INST_0_i_5_n_0
    );
I2C_SDAT_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFDF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(3),
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(0),
      I5 => \SD_COUNTER_reg__0\(4),
      O => I2C_SDAT_INST_0_i_6_n_0
    );
SCLK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEF20002020"
    )
        port map (
      I0 => SCLK_i_2_n_0,
      I1 => i2c_en_r0,
      I2 => i2c_en_r1,
      I3 => SCLK_i_3_n_0,
      I4 => SCLK_i_4_n_0,
      I5 => SCLK_reg_n_0,
      O => SCLK_i_1_n_0
    );
SCLK_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(4),
      O => SCLK_i_10_n_0
    );
SCLK_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F9FFFFFFF00FFFF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => SCLK_i_5_n_0,
      I3 => SCLK_i_6_n_0,
      I4 => mI2C_GO_reg,
      I5 => mI2C_WR_reg,
      O => SCLK_i_2_n_0
    );
SCLK_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF5F5F111"
    )
        port map (
      I0 => SCLK_i_7_n_0,
      I1 => mI2C_GO_reg,
      I2 => SCLK_i_8_n_0,
      I3 => \SD_COUNTER[5]_i_5_n_0\,
      I4 => mI2C_WR_reg,
      I5 => SCLK_i_9_n_0,
      O => SCLK_i_3_n_0
    );
SCLK_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBABFBAAFBABFBFB"
    )
        port map (
      I0 => SCLK_i_10_n_0,
      I1 => \SD_COUNTER_reg__0\(5),
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => mI2C_WR_reg,
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(1),
      O => SCLK_i_4_n_0
    );
SCLK_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(3),
      I1 => \SD_COUNTER_reg__0\(4),
      O => SCLK_i_5_n_0
    );
SCLK_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F200FFFF"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(2),
      I2 => \SD_COUNTER_reg__0\(5),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(1),
      O => SCLK_i_6_n_0
    );
SCLK_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00D700FF00"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(2),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => mI2C_GO_reg,
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(3),
      O => SCLK_i_7_n_0
    );
SCLK_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(5),
      I1 => \SD_COUNTER_reg__0\(4),
      O => SCLK_i_8_n_0
    );
SCLK_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(3),
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(5),
      I5 => \SD_COUNTER_reg__0\(2),
      O => SCLK_i_9_n_0
    );
SCLK_reg: unisim.vcomponents.FDPE
     port map (
      C => iCLK,
      CE => '1',
      D => SCLK_i_1_n_0,
      PRE => rst,
      Q => SCLK_reg_n_0
    );
\SD_COUNTER[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER_reg__0\(0),
      O => p_0_in(0)
    );
\SD_COUNTER[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(0),
      O => p_0_in(1)
    );
\SD_COUNTER[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444000"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER_reg__0\(0),
      I3 => \SD_COUNTER_reg__0\(1),
      I4 => \SD_COUNTER_reg__0\(2),
      O => p_0_in(2)
    );
\SD_COUNTER[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER_reg__0\(1),
      I3 => \SD_COUNTER_reg__0\(0),
      I4 => \SD_COUNTER_reg__0\(2),
      I5 => \SD_COUNTER_reg__0\(3),
      O => p_0_in(3)
    );
\SD_COUNTER[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER[4]_i_2_n_0\,
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(4),
      O => p_0_in(4)
    );
\SD_COUNTER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      O => \SD_COUNTER[4]_i_2_n_0\
    );
\SD_COUNTER[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \SD_COUNTER[5]_i_3_n_0\,
      I1 => \SD_COUNTER[5]_i_4_n_0\,
      I2 => \SD_COUNTER_reg__0\(4),
      I3 => \SD_COUNTER_reg__0\(5),
      I4 => \SD_COUNTER[5]_i_5_n_0\,
      I5 => \SD_COUNTER_reg__0\(3),
      O => SD_COUNTER
    );
\SD_COUNTER[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444440000000"
    )
        port map (
      I0 => mI2C_END,
      I1 => mI2C_GO_reg,
      I2 => \SD_COUNTER[5]_i_5_n_0\,
      I3 => \SD_COUNTER_reg__0\(4),
      I4 => \SD_COUNTER_reg__0\(3),
      I5 => \SD_COUNTER_reg__0\(5),
      O => p_0_in(5)
    );
\SD_COUNTER[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i2c_en_r1,
      I1 => i2c_en_r0,
      O => \SD_COUNTER[5]_i_3_n_0\
    );
\SD_COUNTER[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mI2C_GO_reg,
      I1 => mI2C_END,
      O => \SD_COUNTER[5]_i_4_n_0\
    );
\SD_COUNTER[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(1),
      I1 => \SD_COUNTER_reg__0\(0),
      I2 => \SD_COUNTER_reg__0\(2),
      O => \SD_COUNTER[5]_i_5_n_0\
    );
\SD_COUNTER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(0),
      Q => \SD_COUNTER_reg__0\(0)
    );
\SD_COUNTER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(1),
      Q => \SD_COUNTER_reg__0\(1)
    );
\SD_COUNTER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(2),
      Q => \SD_COUNTER_reg__0\(2)
    );
\SD_COUNTER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(3),
      Q => \SD_COUNTER_reg__0\(3)
    );
\SD_COUNTER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(4),
      Q => \SD_COUNTER_reg__0\(4)
    );
\SD_COUNTER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => SD_COUNTER,
      CLR => rst,
      D => p_0_in(5),
      Q => \SD_COUNTER_reg__0\(5)
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE01DFF76FFDFF7"
    )
        port map (
      I0 => \SD_COUNTER_reg__0\(0),
      I1 => \SD_COUNTER_reg__0\(1),
      I2 => \SD_COUNTER_reg__0\(2),
      I3 => \SD_COUNTER_reg__0\(3),
      I4 => \SD_COUNTER_reg__0\(4),
      I5 => \SD_COUNTER_reg__0\(5),
      O => g0_b0_n_0
    );
mI2C_WR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400404444"
    )
        port map (
      I0 => i2c_en_r0,
      I1 => i2c_en_r1,
      I2 => mI2C_END,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \LUT_INDEX_reg[4]\,
      O => E(0)
    );
\mSetup_ST[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \LUT_INDEX_reg[4]\,
      I3 => mI2C_END,
      O => D(0)
    );
\mSetup_ST[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
        port map (
      I0 => \mSetup_ST_reg[0]\,
      I1 => \mSetup_ST[1]_i_3_n_0\,
      I2 => mI2C_WR_reg,
      I3 => ACKW1_reg_n_0,
      I4 => ACKW2_reg_n_0,
      I5 => ACKW3_reg_n_0,
      O => D(1)
    );
\mSetup_ST[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ACKR3_reg_n_0,
      I1 => ACKR2_reg_n_0,
      I2 => ACKR1_reg_n_0,
      O => \mSetup_ST[1]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0_IICctrl is
  port (
    LUT_INDEX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I2C_SCLK : out STD_LOGIC;
    I2C_SDAT : inout STD_LOGIC;
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of IICctrl_0_IICctrl : entity is "IICctrl";
end IICctrl_0_IICctrl;

architecture STRUCTURE of IICctrl_0_IICctrl is
  signal \^lut_index\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \LUT_INDEX[7]_i_1_n_0\ : STD_LOGIC;
  signal \LUT_INDEX[7]_i_3_n_0\ : STD_LOGIC;
  signal \LUT_INDEX[7]_i_4_n_0\ : STD_LOGIC;
  signal \LUT_INDEX[7]_i_5_n_0\ : STD_LOGIC;
  signal i2c_en_r0 : STD_LOGIC;
  signal i2c_en_r1 : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_2_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_3_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_4_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_5_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_6_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_7_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[0]_i_8_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[4]_i_2_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[4]_i_3_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[4]_i_4_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[4]_i_5_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[8]_i_2_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[8]_i_3_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV[8]_i_4_n_0\ : STD_LOGIC;
  signal mI2C_CLK_DIV_reg : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \mI2C_CLK_DIV_reg_n_0_[0]\ : STD_LOGIC;
  signal mI2C_CTRL_CLK : STD_LOGIC;
  signal mI2C_CTRL_CLK_i_1_n_0 : STD_LOGIC;
  signal mI2C_GO0_out : STD_LOGIC;
  signal mI2C_GO2_out : STD_LOGIC;
  signal mI2C_GO_reg_n_0 : STD_LOGIC;
  signal mI2C_WR4_out : STD_LOGIC;
  signal mI2C_WR_i_3_n_0 : STD_LOGIC;
  signal mI2C_WR_reg_n_0 : STD_LOGIC;
  signal \mSetup_ST[1]_i_2_n_0\ : STD_LOGIC;
  signal \mSetup_ST_reg_n_0_[0]\ : STD_LOGIC;
  signal \mSetup_ST_reg_n_0_[1]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal u_I2C_Controller_n_2 : STD_LOGIC;
  signal u_I2C_Controller_n_3 : STD_LOGIC;
  signal \NLW_mI2C_CLK_DIV_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_mI2C_CLK_DIV_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LUT_INDEX[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \LUT_INDEX[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \LUT_INDEX[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LUT_INDEX[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \LUT_INDEX[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \LUT_INDEX[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \LUT_INDEX[7]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of mI2C_GO_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of mI2C_WR_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mSetup_ST[1]_i_2\ : label is "soft_lutpair17";
begin
  LUT_INDEX(7 downto 0) <= \^lut_index\(7 downto 0);
\LUT_INDEX[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lut_index\(0),
      O => \p_0_in__0\(0)
    );
\LUT_INDEX[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lut_index\(0),
      I1 => \^lut_index\(1),
      O => \p_0_in__0\(1)
    );
\LUT_INDEX[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^lut_index\(2),
      I1 => \^lut_index\(1),
      I2 => \^lut_index\(0),
      O => \p_0_in__0\(2)
    );
\LUT_INDEX[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^lut_index\(3),
      I1 => \^lut_index\(0),
      I2 => \^lut_index\(1),
      I3 => \^lut_index\(2),
      O => \p_0_in__0\(3)
    );
\LUT_INDEX[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^lut_index\(4),
      I1 => \^lut_index\(2),
      I2 => \^lut_index\(1),
      I3 => \^lut_index\(0),
      I4 => \^lut_index\(3),
      O => \p_0_in__0\(4)
    );
\LUT_INDEX[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^lut_index\(5),
      I1 => \^lut_index\(3),
      I2 => \^lut_index\(0),
      I3 => \^lut_index\(1),
      I4 => \^lut_index\(2),
      I5 => \^lut_index\(4),
      O => \p_0_in__0\(5)
    );
\LUT_INDEX[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^lut_index\(6),
      I1 => \LUT_INDEX[7]_i_4_n_0\,
      O => \p_0_in__0\(6)
    );
\LUT_INDEX[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \mSetup_ST_reg_n_0_[0]\,
      I1 => \mSetup_ST_reg_n_0_[1]\,
      I2 => i2c_en_r1,
      I3 => i2c_en_r0,
      I4 => \LUT_INDEX[7]_i_3_n_0\,
      O => \LUT_INDEX[7]_i_1_n_0\
    );
\LUT_INDEX[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^lut_index\(7),
      I1 => \LUT_INDEX[7]_i_4_n_0\,
      I2 => \^lut_index\(6),
      O => \p_0_in__0\(7)
    );
\LUT_INDEX[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AE000000"
    )
        port map (
      I0 => \^lut_index\(4),
      I1 => \^lut_index\(3),
      I2 => \LUT_INDEX[7]_i_5_n_0\,
      I3 => \^lut_index\(7),
      I4 => \^lut_index\(5),
      I5 => \^lut_index\(6),
      O => \LUT_INDEX[7]_i_3_n_0\
    );
\LUT_INDEX[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^lut_index\(5),
      I1 => \^lut_index\(3),
      I2 => \^lut_index\(0),
      I3 => \^lut_index\(1),
      I4 => \^lut_index\(2),
      I5 => \^lut_index\(4),
      O => \LUT_INDEX[7]_i_4_n_0\
    );
\LUT_INDEX[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^lut_index\(1),
      I1 => \^lut_index\(2),
      O => \LUT_INDEX[7]_i_5_n_0\
    );
\LUT_INDEX_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(0),
      Q => \^lut_index\(0)
    );
\LUT_INDEX_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => \^lut_index\(1)
    );
\LUT_INDEX_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => \^lut_index\(2)
    );
\LUT_INDEX_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => \^lut_index\(3)
    );
\LUT_INDEX_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(4),
      Q => \^lut_index\(4)
    );
\LUT_INDEX_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(5),
      Q => \^lut_index\(5)
    );
\LUT_INDEX_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(6),
      Q => \^lut_index\(6)
    );
\LUT_INDEX_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => \LUT_INDEX[7]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(7),
      Q => \^lut_index\(7)
    );
i2c_en_r0_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => mI2C_CTRL_CLK,
      Q => i2c_en_r0
    );
i2c_en_r1_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => i2c_en_r0,
      Q => i2c_en_r1
    );
\mI2C_CLK_DIV[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005455555555"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(11),
      I1 => \mI2C_CLK_DIV[0]_i_7_n_0\,
      I2 => \mI2C_CLK_DIV[0]_i_8_n_0\,
      I3 => mI2C_CLK_DIV_reg(8),
      I4 => mI2C_CLK_DIV_reg(9),
      I5 => mI2C_CLK_DIV_reg(10),
      O => \mI2C_CLK_DIV[0]_i_2_n_0\
    );
\mI2C_CLK_DIV[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(3),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[0]_i_3_n_0\
    );
\mI2C_CLK_DIV[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(2),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[0]_i_4_n_0\
    );
\mI2C_CLK_DIV[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(1),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[0]_i_5_n_0\
    );
\mI2C_CLK_DIV[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \mI2C_CLK_DIV_reg_n_0_[0]\,
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[0]_i_6_n_0\
    );
\mI2C_CLK_DIV[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(6),
      I1 => mI2C_CLK_DIV_reg(7),
      I2 => mI2C_CLK_DIV_reg(5),
      O => \mI2C_CLK_DIV[0]_i_7_n_0\
    );
\mI2C_CLK_DIV[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(1),
      I1 => mI2C_CLK_DIV_reg(2),
      I2 => mI2C_CLK_DIV_reg(3),
      I3 => mI2C_CLK_DIV_reg(4),
      O => \mI2C_CLK_DIV[0]_i_8_n_0\
    );
\mI2C_CLK_DIV[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(7),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[4]_i_2_n_0\
    );
\mI2C_CLK_DIV[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(6),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[4]_i_3_n_0\
    );
\mI2C_CLK_DIV[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(5),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[4]_i_4_n_0\
    );
\mI2C_CLK_DIV[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(4),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[4]_i_5_n_0\
    );
\mI2C_CLK_DIV[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(10),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[8]_i_2_n_0\
    );
\mI2C_CLK_DIV[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(9),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[8]_i_3_n_0\
    );
\mI2C_CLK_DIV[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mI2C_CLK_DIV_reg(8),
      I1 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O => \mI2C_CLK_DIV[8]_i_4_n_0\
    );
\mI2C_CLK_DIV_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[0]_i_1_n_7\,
      Q => \mI2C_CLK_DIV_reg_n_0_[0]\
    );
\mI2C_CLK_DIV_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mI2C_CLK_DIV_reg[0]_i_1_n_0\,
      CO(2) => \mI2C_CLK_DIV_reg[0]_i_1_n_1\,
      CO(1) => \mI2C_CLK_DIV_reg[0]_i_1_n_2\,
      CO(0) => \mI2C_CLK_DIV_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mI2C_CLK_DIV[0]_i_2_n_0\,
      O(3) => \mI2C_CLK_DIV_reg[0]_i_1_n_4\,
      O(2) => \mI2C_CLK_DIV_reg[0]_i_1_n_5\,
      O(1) => \mI2C_CLK_DIV_reg[0]_i_1_n_6\,
      O(0) => \mI2C_CLK_DIV_reg[0]_i_1_n_7\,
      S(3) => \mI2C_CLK_DIV[0]_i_3_n_0\,
      S(2) => \mI2C_CLK_DIV[0]_i_4_n_0\,
      S(1) => \mI2C_CLK_DIV[0]_i_5_n_0\,
      S(0) => \mI2C_CLK_DIV[0]_i_6_n_0\
    );
\mI2C_CLK_DIV_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[8]_i_1_n_5\,
      Q => mI2C_CLK_DIV_reg(10)
    );
\mI2C_CLK_DIV_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[8]_i_1_n_0\,
      Q => mI2C_CLK_DIV_reg(11)
    );
\mI2C_CLK_DIV_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[0]_i_1_n_6\,
      Q => mI2C_CLK_DIV_reg(1)
    );
\mI2C_CLK_DIV_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[0]_i_1_n_5\,
      Q => mI2C_CLK_DIV_reg(2)
    );
\mI2C_CLK_DIV_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[0]_i_1_n_4\,
      Q => mI2C_CLK_DIV_reg(3)
    );
\mI2C_CLK_DIV_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[4]_i_1_n_7\,
      Q => mI2C_CLK_DIV_reg(4)
    );
\mI2C_CLK_DIV_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mI2C_CLK_DIV_reg[0]_i_1_n_0\,
      CO(3) => \mI2C_CLK_DIV_reg[4]_i_1_n_0\,
      CO(2) => \mI2C_CLK_DIV_reg[4]_i_1_n_1\,
      CO(1) => \mI2C_CLK_DIV_reg[4]_i_1_n_2\,
      CO(0) => \mI2C_CLK_DIV_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mI2C_CLK_DIV_reg[4]_i_1_n_4\,
      O(2) => \mI2C_CLK_DIV_reg[4]_i_1_n_5\,
      O(1) => \mI2C_CLK_DIV_reg[4]_i_1_n_6\,
      O(0) => \mI2C_CLK_DIV_reg[4]_i_1_n_7\,
      S(3) => \mI2C_CLK_DIV[4]_i_2_n_0\,
      S(2) => \mI2C_CLK_DIV[4]_i_3_n_0\,
      S(1) => \mI2C_CLK_DIV[4]_i_4_n_0\,
      S(0) => \mI2C_CLK_DIV[4]_i_5_n_0\
    );
\mI2C_CLK_DIV_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[4]_i_1_n_6\,
      Q => mI2C_CLK_DIV_reg(5)
    );
\mI2C_CLK_DIV_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[4]_i_1_n_5\,
      Q => mI2C_CLK_DIV_reg(6)
    );
\mI2C_CLK_DIV_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[4]_i_1_n_4\,
      Q => mI2C_CLK_DIV_reg(7)
    );
\mI2C_CLK_DIV_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[8]_i_1_n_7\,
      Q => mI2C_CLK_DIV_reg(8)
    );
\mI2C_CLK_DIV_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mI2C_CLK_DIV_reg[4]_i_1_n_0\,
      CO(3) => \mI2C_CLK_DIV_reg[8]_i_1_n_0\,
      CO(2) => \NLW_mI2C_CLK_DIV_reg[8]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \mI2C_CLK_DIV_reg[8]_i_1_n_2\,
      CO(0) => \mI2C_CLK_DIV_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_mI2C_CLK_DIV_reg[8]_i_1_O_UNCONNECTED\(3),
      O(2) => \mI2C_CLK_DIV_reg[8]_i_1_n_5\,
      O(1) => \mI2C_CLK_DIV_reg[8]_i_1_n_6\,
      O(0) => \mI2C_CLK_DIV_reg[8]_i_1_n_7\,
      S(3) => '1',
      S(2) => \mI2C_CLK_DIV[8]_i_2_n_0\,
      S(1) => \mI2C_CLK_DIV[8]_i_3_n_0\,
      S(0) => \mI2C_CLK_DIV[8]_i_4_n_0\
    );
\mI2C_CLK_DIV_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => \mI2C_CLK_DIV_reg[8]_i_1_n_6\,
      Q => mI2C_CLK_DIV_reg(9)
    );
mI2C_CTRL_CLK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mI2C_CLK_DIV[0]_i_2_n_0\,
      I1 => mI2C_CTRL_CLK,
      O => mI2C_CTRL_CLK_i_1_n_0
    );
mI2C_CTRL_CLK_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => '1',
      CLR => rst,
      D => mI2C_CTRL_CLK_i_1_n_0,
      Q => mI2C_CTRL_CLK
    );
mI2C_GO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \LUT_INDEX[7]_i_3_n_0\,
      I1 => \mSetup_ST_reg_n_0_[0]\,
      I2 => \mSetup_ST_reg_n_0_[1]\,
      O => mI2C_GO0_out
    );
mI2C_GO_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => mI2C_GO0_out,
      Q => mI2C_GO_reg_n_0
    );
mI2C_WR_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => mI2C_GO0_out,
      I1 => mI2C_WR_i_3_n_0,
      I2 => \^lut_index\(4),
      I3 => \^lut_index\(7),
      I4 => \^lut_index\(3),
      O => mI2C_WR4_out
    );
mI2C_WR_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^lut_index\(2),
      I1 => \^lut_index\(1),
      I2 => \^lut_index\(6),
      I3 => \^lut_index\(5),
      O => mI2C_WR_i_3_n_0
    );
mI2C_WR_reg: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => mI2C_WR4_out,
      Q => mI2C_WR_reg_n_0
    );
\mSetup_ST[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \mSetup_ST_reg_n_0_[0]\,
      I1 => \LUT_INDEX[7]_i_3_n_0\,
      O => \mSetup_ST[1]_i_2_n_0\
    );
\mSetup_ST_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => u_I2C_Controller_n_3,
      Q => \mSetup_ST_reg_n_0_[0]\
    );
\mSetup_ST_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => iCLK,
      CE => mI2C_GO2_out,
      CLR => rst,
      D => u_I2C_Controller_n_2,
      Q => \mSetup_ST_reg_n_0_[1]\
    );
u_I2C_Controller: entity work.IICctrl_0_I2C_Controller
     port map (
      D(1) => u_I2C_Controller_n_2,
      D(0) => u_I2C_Controller_n_3,
      E(0) => mI2C_GO2_out,
      I2C_SCLK => I2C_SCLK,
      I2C_SDAT => I2C_SDAT,
      LUT_DATA(15 downto 0) => LUT_DATA(15 downto 0),
      \LUT_INDEX_reg[4]\ => \LUT_INDEX[7]_i_3_n_0\,
      Q(1) => \mSetup_ST_reg_n_0_[1]\,
      Q(0) => \mSetup_ST_reg_n_0_[0]\,
      Slave_Addr(7 downto 0) => Slave_Addr(7 downto 0),
      i2c_en_r0 => i2c_en_r0,
      i2c_en_r1 => i2c_en_r1,
      iCLK => iCLK,
      mI2C_CTRL_CLK => mI2C_CTRL_CLK,
      mI2C_GO_reg => mI2C_GO_reg_n_0,
      mI2C_WR_reg => mI2C_WR_reg_n_0,
      \mSetup_ST_reg[0]\ => \mSetup_ST[1]_i_2_n_0\,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity IICctrl_0 is
  port (
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    I2C_SCLK : out STD_LOGIC;
    I2C_SDAT : inout STD_LOGIC;
    LUT_INDEX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of IICctrl_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of IICctrl_0 : entity is "IICctrl_0,IICctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of IICctrl_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of IICctrl_0 : entity is "IICctrl,Vivado 2016.1";
end IICctrl_0;

architecture STRUCTURE of IICctrl_0 is
begin
inst: entity work.IICctrl_0_IICctrl
     port map (
      I2C_SCLK => I2C_SCLK,
      I2C_SDAT => I2C_SDAT,
      LUT_DATA(15 downto 0) => LUT_DATA(15 downto 0),
      LUT_INDEX(7 downto 0) => LUT_INDEX(7 downto 0),
      Slave_Addr(7 downto 0) => Slave_Addr(7 downto 0),
      iCLK => iCLK,
      rst => rst
    );
end STRUCTURE;
