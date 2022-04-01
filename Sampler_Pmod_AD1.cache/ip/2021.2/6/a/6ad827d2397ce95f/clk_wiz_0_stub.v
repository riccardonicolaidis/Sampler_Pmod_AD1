// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Apr  1 11:46:09 2022
// Host        : LAPTOP-LB6J3CUA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk_20_MHz, clk_10_MHz, clk_80_MHz, clk_40_MHz, 
  resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_20_MHz,clk_10_MHz,clk_80_MHz,clk_40_MHz,resetn,clk_in1" */;
  output clk_20_MHz;
  output clk_10_MHz;
  output clk_80_MHz;
  output clk_40_MHz;
  input resetn;
  input clk_in1;
endmodule