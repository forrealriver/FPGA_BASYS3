-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sat Nov 12 15:17:19 2016
-- Host        : WZJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/WZJ/Desktop/df/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/IICctrl_0/IICctrl_0_stub.vhdl
-- Design      : IICctrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IICctrl_0 is
  Port ( 
    iCLK : in STD_LOGIC;
    rst : in STD_LOGIC;
    I2C_SCLK : out STD_LOGIC;
    I2C_SDAT : inout STD_LOGIC;
    LUT_INDEX : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LUT_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Slave_Addr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end IICctrl_0;

architecture stub of IICctrl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iCLK,rst,I2C_SCLK,I2C_SDAT,LUT_INDEX[7:0],LUT_DATA[15:0],Slave_Addr[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "IICctrl,Vivado 2016.1";
begin
end;
