// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Aug  4 11:23:27 2022
// Host        : DESKTOP-E5S1MHN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.gen/sources_1/ip/clkSetup/clkSetup_stub.v
// Design      : clkSetup
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clkSetup(clk25, clk50, clk100, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk25,clk50,clk100,locked,clk_in1" */;
  output clk25;
  output clk50;
  output clk100;
  output locked;
  input clk_in1;
endmodule
