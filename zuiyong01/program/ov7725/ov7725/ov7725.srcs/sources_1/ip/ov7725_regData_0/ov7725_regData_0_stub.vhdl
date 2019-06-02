-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sat Nov 12 15:17:17 2016
-- Host        : WZJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/ov7725_regData_0/ov7725_regData_0_stub.vhdl
-- Design      : ov7725_regData_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ov7725_regData_0 is
  Port ( 
    LUT_INDEX : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end ov7725_regData_0;

architecture stub of ov7725_regData_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "LUT_INDEX[7:0],LUT_DATA[15:0],Slave_Addr[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ov7725_regData,Vivado 2016.1";
begin
end;
