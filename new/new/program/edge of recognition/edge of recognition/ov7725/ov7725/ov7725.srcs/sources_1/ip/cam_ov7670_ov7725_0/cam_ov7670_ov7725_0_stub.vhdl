-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Dec 01 14:56:27 2016
-- Host        : WZJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {F:/1___study/1___study/FPGA/The edge of the
--               recognition/new/new/program/program/ov7725/ov7725/ov7725.srcs/sources_1/ip/cam_ov7670_ov7725_0/cam_ov7670_ov7725_0_stub.vhdl}
-- Design      : cam_ov7670_ov7725_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cam_ov7670_ov7725_0 is
  Port ( 
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    H_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    V_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC;
    wclk : out STD_LOGIC
  );

end cam_ov7670_ov7725_0;

architecture stub of cam_ov7670_ov7725_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pclk,vsync,href,d[7:0],H_cnt[11:0],V_cnt[10:0],addr[16:0],dout[15:0],we,wclk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cam_ov7670_ov7725,Vivado 2016.1";
begin
end;
