-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sat Nov 12 15:17:17 2016
-- Host        : WZJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_sim_netlist.vhdl
-- Design      : ov7725_regData_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov7725_regData_0 is
  port (
    LUT_INDEX : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ov7725_regData_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ov7725_regData_0 : entity is "ov7725_regData_0,ov7725_regData,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ov7725_regData_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ov7725_regData_0 : entity is "ov7725_regData,Vivado 2016.1";
end ov7725_regData_0;

architecture STRUCTURE of ov7725_regData_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^lut_data\ : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \LUT_DATA[12]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
  LUT_DATA(15) <= \<const0>\;
  LUT_DATA(14) <= \<const0>\;
  LUT_DATA(13) <= \<const0>\;
  LUT_DATA(12 downto 11) <= \^lut_data\(12 downto 11);
  LUT_DATA(10) <= \^lut_data\(11);
  LUT_DATA(9 downto 6) <= \^lut_data\(9 downto 6);
  LUT_DATA(5) <= \<const0>\;
  LUT_DATA(4) <= \^lut_data\(11);
  LUT_DATA(3) <= \<const0>\;
  LUT_DATA(2) <= \^lut_data\(2);
  LUT_DATA(1) <= \^lut_data\(2);
  LUT_DATA(0) <= \<const0>\;
  Slave_Addr(7) <= \<const0>\;
  Slave_Addr(6) <= \<const1>\;
  Slave_Addr(5) <= \<const0>\;
  Slave_Addr(4) <= \<const0>\;
  Slave_Addr(3) <= \<const0>\;
  Slave_Addr(2) <= \<const0>\;
  Slave_Addr(1) <= \<const1>\;
  Slave_Addr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\LUT_DATA[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0026"
    )
        port map (
      I0 => LUT_INDEX(2),
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(0),
      I3 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      O => \^lut_data\(12)
    );
\LUT_DATA[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => LUT_INDEX(5),
      I1 => LUT_INDEX(7),
      I2 => LUT_INDEX(6),
      I3 => LUT_INDEX(4),
      I4 => LUT_INDEX(3),
      O => \LUT_DATA[12]_INST_0_i_1_n_0\
    );
\LUT_DATA[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(2),
      I3 => LUT_INDEX(0),
      O => \^lut_data\(2)
    );
\LUT_DATA[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => LUT_INDEX(2),
      I1 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      I2 => LUT_INDEX(1),
      I3 => LUT_INDEX(0),
      O => \^lut_data\(11)
    );
\LUT_DATA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => LUT_INDEX(2),
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(0),
      I3 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      O => \^lut_data\(6)
    );
\LUT_DATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(2),
      O => \^lut_data\(7)
    );
\LUT_DATA[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(2),
      I3 => LUT_INDEX(0),
      O => \^lut_data\(8)
    );
\LUT_DATA[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => LUT_INDEX(2),
      I1 => LUT_INDEX(1),
      I2 => LUT_INDEX(0),
      I3 => \LUT_DATA[12]_INST_0_i_1_n_0\,
      O => \^lut_data\(9)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
