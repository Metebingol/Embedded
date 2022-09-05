-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Mon Sep  5 09:54:15 2022
-- Host        : DESKTOP-E5S1MHN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Studies/Embedded/FPGA/BasicToAdvanced/microBlaze/microBlaze.gen/sources_1/bd/microBlazeWithFirst/ip/microBlazeWithFirst_clk_wiz_1_0/microBlazeWithFirst_clk_wiz_1_0_stub.vhdl
-- Design      : microBlazeWithFirst_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microBlazeWithFirst_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end microBlazeWithFirst_clk_wiz_1_0;

architecture stub of microBlazeWithFirst_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
