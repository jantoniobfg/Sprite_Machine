// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec  9 16:04:19 2022
// Host        : DESKTOP-S6J8FS7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/PC/Documents/FPGA/final_proj/VDP/VDP.gen/sources_1/bd/frame_buffer/ip/frame_buffer_blk_mem_gen_0_0/frame_buffer_blk_mem_gen_0_0_stub.v
// Design      : frame_buffer_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *)
module frame_buffer_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[63:0],addra[12:0],dina[511:0],clkb,enb,addrb[12:0],doutb[511:0]" */;
  input clka;
  input ena;
  input [63:0]wea;
  input [12:0]addra;
  input [511:0]dina;
  input clkb;
  input enb;
  input [12:0]addrb;
  output [511:0]doutb;
endmodule
