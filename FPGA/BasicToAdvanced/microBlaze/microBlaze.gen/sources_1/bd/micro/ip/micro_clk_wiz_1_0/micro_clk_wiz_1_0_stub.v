// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Sep  2 16:22:47 2022
// Host        : DESKTOP-E5S1MHN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Studies/Embedded/FPGA/BasicToAdvanced/microBlaze/microBlaze.gen/sources_1/bd/micro/ip/micro_clk_wiz_1_0/micro_clk_wiz_1_0_stub.v
// Design      : micro_clk_wiz_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module micro_clk_wiz_1_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
