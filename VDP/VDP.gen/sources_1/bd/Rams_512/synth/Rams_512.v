//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Jan 10 13:34:44 2023
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target Rams_512.bd
//Design      : Rams_512
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Rams_512,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Rams_512,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Rams_512.hwdef" *) 
module Rams_512
   (FRAME_512_PORTA_0_addr,
    FRAME_512_PORTA_0_clk,
    FRAME_512_PORTA_0_din,
    FRAME_512_PORTA_0_en,
    FRAME_512_PORTA_0_we,
    FRAME_512_PORTB_0_addr,
    FRAME_512_PORTB_0_clk,
    FRAME_512_PORTB_0_dout,
    FRAME_512_PORTB_0_en,
    SPRITE_512_PORTA_0_addr,
    SPRITE_512_PORTA_0_clk,
    SPRITE_512_PORTA_0_din,
    SPRITE_512_PORTA_0_en,
    SPRITE_512_PORTA_0_we,
    SPRITE_512_PORTB_0_addr,
    SPRITE_512_PORTB_0_clk,
    SPRITE_512_PORTB_0_dout,
    SPRITE_512_PORTB_0_en,
    UPPER_512_PORTA_0_addr,
    UPPER_512_PORTA_0_clk,
    UPPER_512_PORTA_0_din,
    UPPER_512_PORTA_0_en,
    UPPER_512_PORTA_0_we,
    UPPER_512_PORTB_0_addr,
    UPPER_512_PORTB_0_clk,
    UPPER_512_PORTB_0_dout,
    UPPER_512_PORTB_0_en,
    UPPER_PREVIOUS_512_PORTA_0_addr,
    UPPER_PREVIOUS_512_PORTA_0_clk,
    UPPER_PREVIOUS_512_PORTA_0_din,
    UPPER_PREVIOUS_512_PORTA_0_en,
    UPPER_PREVIOUS_512_PORTA_0_we,
    UPPER_PREVIOUS_512_PORTB_0_addr,
    UPPER_PREVIOUS_512_PORTB_0_clk,
    UPPER_PREVIOUS_512_PORTB_0_dout,
    UPPER_PREVIOUS_512_PORTB_0_en);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FRAME_512_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [12:0]FRAME_512_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTA_0 CLK" *) input FRAME_512_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTA_0 DIN" *) input [511:0]FRAME_512_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTA_0 EN" *) input FRAME_512_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTA_0 WE" *) input [63:0]FRAME_512_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FRAME_512_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [12:0]FRAME_512_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTB_0 CLK" *) input FRAME_512_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTB_0 DOUT" *) output [511:0]FRAME_512_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 FRAME_512_PORTB_0 EN" *) input FRAME_512_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPRITE_512_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [11:0]SPRITE_512_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTA_0 CLK" *) input SPRITE_512_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTA_0 DIN" *) input [511:0]SPRITE_512_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTA_0 EN" *) input SPRITE_512_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTA_0 WE" *) input [0:0]SPRITE_512_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPRITE_512_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [11:0]SPRITE_512_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTB_0 CLK" *) input SPRITE_512_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTB_0 DOUT" *) output [511:0]SPRITE_512_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_512_PORTB_0 EN" *) input SPRITE_512_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_512_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [7:0]UPPER_512_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTA_0 CLK" *) input UPPER_512_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTA_0 DIN" *) input [511:0]UPPER_512_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTA_0 EN" *) input UPPER_512_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTA_0 WE" *) input [0:0]UPPER_512_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_512_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [7:0]UPPER_512_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTB_0 CLK" *) input UPPER_512_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTB_0 DOUT" *) output [511:0]UPPER_512_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_512_PORTB_0 EN" *) input UPPER_512_PORTB_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PREVIOUS_512_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [7:0]UPPER_PREVIOUS_512_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTA_0 CLK" *) input UPPER_PREVIOUS_512_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTA_0 DIN" *) input [511:0]UPPER_PREVIOUS_512_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTA_0 EN" *) input UPPER_PREVIOUS_512_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTA_0 WE" *) input [0:0]UPPER_PREVIOUS_512_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PREVIOUS_512_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [7:0]UPPER_PREVIOUS_512_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTB_0 CLK" *) input UPPER_PREVIOUS_512_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTB_0 DOUT" *) output [511:0]UPPER_PREVIOUS_512_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_512_PORTB_0 EN" *) input UPPER_PREVIOUS_512_PORTB_0_en;

  wire [12:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [511:0]BRAM_PORTA_0_1_DIN;
  wire BRAM_PORTA_0_1_EN;
  wire [63:0]BRAM_PORTA_0_1_WE;
  wire [11:0]BRAM_PORTA_0_2_ADDR;
  wire BRAM_PORTA_0_2_CLK;
  wire [511:0]BRAM_PORTA_0_2_DIN;
  wire BRAM_PORTA_0_2_EN;
  wire [0:0]BRAM_PORTA_0_2_WE;
  wire [7:0]BRAM_PORTA_0_3_ADDR;
  wire BRAM_PORTA_0_3_CLK;
  wire [511:0]BRAM_PORTA_0_3_DIN;
  wire BRAM_PORTA_0_3_EN;
  wire [0:0]BRAM_PORTA_0_3_WE;
  wire [7:0]BRAM_PORTA_0_4_ADDR;
  wire BRAM_PORTA_0_4_CLK;
  wire [511:0]BRAM_PORTA_0_4_DIN;
  wire BRAM_PORTA_0_4_EN;
  wire [0:0]BRAM_PORTA_0_4_WE;
  wire [12:0]BRAM_PORTB_0_1_ADDR;
  wire BRAM_PORTB_0_1_CLK;
  wire [511:0]BRAM_PORTB_0_1_DOUT;
  wire BRAM_PORTB_0_1_EN;
  wire [11:0]BRAM_PORTB_0_2_ADDR;
  wire BRAM_PORTB_0_2_CLK;
  wire [511:0]BRAM_PORTB_0_2_DOUT;
  wire BRAM_PORTB_0_2_EN;
  wire [7:0]BRAM_PORTB_0_3_ADDR;
  wire BRAM_PORTB_0_3_CLK;
  wire [511:0]BRAM_PORTB_0_3_DOUT;
  wire BRAM_PORTB_0_3_EN;
  wire [7:0]BRAM_PORTB_0_4_ADDR;
  wire BRAM_PORTB_0_4_CLK;
  wire [511:0]BRAM_PORTB_0_4_DOUT;
  wire BRAM_PORTB_0_4_EN;

  assign BRAM_PORTA_0_1_ADDR = FRAME_512_PORTA_0_addr[12:0];
  assign BRAM_PORTA_0_1_CLK = FRAME_512_PORTA_0_clk;
  assign BRAM_PORTA_0_1_DIN = FRAME_512_PORTA_0_din[511:0];
  assign BRAM_PORTA_0_1_EN = FRAME_512_PORTA_0_en;
  assign BRAM_PORTA_0_1_WE = FRAME_512_PORTA_0_we[63:0];
  assign BRAM_PORTA_0_2_ADDR = SPRITE_512_PORTA_0_addr[11:0];
  assign BRAM_PORTA_0_2_CLK = SPRITE_512_PORTA_0_clk;
  assign BRAM_PORTA_0_2_DIN = SPRITE_512_PORTA_0_din[511:0];
  assign BRAM_PORTA_0_2_EN = SPRITE_512_PORTA_0_en;
  assign BRAM_PORTA_0_2_WE = SPRITE_512_PORTA_0_we[0];
  assign BRAM_PORTA_0_3_ADDR = UPPER_PREVIOUS_512_PORTA_0_addr[7:0];
  assign BRAM_PORTA_0_3_CLK = UPPER_PREVIOUS_512_PORTA_0_clk;
  assign BRAM_PORTA_0_3_DIN = UPPER_PREVIOUS_512_PORTA_0_din[511:0];
  assign BRAM_PORTA_0_3_EN = UPPER_PREVIOUS_512_PORTA_0_en;
  assign BRAM_PORTA_0_3_WE = UPPER_PREVIOUS_512_PORTA_0_we[0];
  assign BRAM_PORTA_0_4_ADDR = UPPER_512_PORTA_0_addr[7:0];
  assign BRAM_PORTA_0_4_CLK = UPPER_512_PORTA_0_clk;
  assign BRAM_PORTA_0_4_DIN = UPPER_512_PORTA_0_din[511:0];
  assign BRAM_PORTA_0_4_EN = UPPER_512_PORTA_0_en;
  assign BRAM_PORTA_0_4_WE = UPPER_512_PORTA_0_we[0];
  assign BRAM_PORTB_0_1_ADDR = FRAME_512_PORTB_0_addr[12:0];
  assign BRAM_PORTB_0_1_CLK = FRAME_512_PORTB_0_clk;
  assign BRAM_PORTB_0_1_EN = FRAME_512_PORTB_0_en;
  assign BRAM_PORTB_0_2_ADDR = SPRITE_512_PORTB_0_addr[11:0];
  assign BRAM_PORTB_0_2_CLK = SPRITE_512_PORTB_0_clk;
  assign BRAM_PORTB_0_2_EN = SPRITE_512_PORTB_0_en;
  assign BRAM_PORTB_0_3_ADDR = UPPER_PREVIOUS_512_PORTB_0_addr[7:0];
  assign BRAM_PORTB_0_3_CLK = UPPER_PREVIOUS_512_PORTB_0_clk;
  assign BRAM_PORTB_0_3_EN = UPPER_PREVIOUS_512_PORTB_0_en;
  assign BRAM_PORTB_0_4_ADDR = UPPER_512_PORTB_0_addr[7:0];
  assign BRAM_PORTB_0_4_CLK = UPPER_512_PORTB_0_clk;
  assign BRAM_PORTB_0_4_EN = UPPER_512_PORTB_0_en;
  assign FRAME_512_PORTB_0_dout[511:0] = BRAM_PORTB_0_1_DOUT;
  assign SPRITE_512_PORTB_0_dout[511:0] = BRAM_PORTB_0_2_DOUT;
  assign UPPER_512_PORTB_0_dout[511:0] = BRAM_PORTB_0_4_DOUT;
  assign UPPER_PREVIOUS_512_PORTB_0_dout[511:0] = BRAM_PORTB_0_3_DOUT;
  Rams_512_blk_mem_gen_0_0 FRAME_512_mem_gen_0
       (.addra(BRAM_PORTA_0_1_ADDR),
        .addrb(BRAM_PORTB_0_1_ADDR),
        .clka(BRAM_PORTA_0_1_CLK),
        .clkb(BRAM_PORTB_0_1_CLK),
        .dina(BRAM_PORTA_0_1_DIN),
        .doutb(BRAM_PORTB_0_1_DOUT),
        .ena(BRAM_PORTA_0_1_EN),
        .enb(BRAM_PORTB_0_1_EN),
        .wea(BRAM_PORTA_0_1_WE));
  Rams_512_blk_mem_gen_0_1 SPRITE_512_mem_gen_0
       (.addra(BRAM_PORTA_0_2_ADDR),
        .addrb(BRAM_PORTB_0_2_ADDR),
        .clka(BRAM_PORTA_0_2_CLK),
        .clkb(BRAM_PORTB_0_2_CLK),
        .dina(BRAM_PORTA_0_2_DIN),
        .doutb(BRAM_PORTB_0_2_DOUT),
        .ena(BRAM_PORTA_0_2_EN),
        .enb(BRAM_PORTB_0_2_EN),
        .wea(BRAM_PORTA_0_2_WE));
  Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0 UPPER_512_mem_gen_1
       (.addra(BRAM_PORTA_0_4_ADDR),
        .addrb(BRAM_PORTB_0_4_ADDR),
        .clka(BRAM_PORTA_0_4_CLK),
        .clkb(BRAM_PORTB_0_4_CLK),
        .dina(BRAM_PORTA_0_4_DIN),
        .doutb(BRAM_PORTB_0_4_DOUT),
        .ena(BRAM_PORTA_0_4_EN),
        .enb(BRAM_PORTB_0_4_EN),
        .wea(BRAM_PORTA_0_4_WE));
  Rams_512_blk_mem_gen_0_2 UPPER_PREVIOUS_512_mem_gen_0
       (.addra(BRAM_PORTA_0_3_ADDR),
        .addrb(BRAM_PORTB_0_3_ADDR),
        .clka(BRAM_PORTA_0_3_CLK),
        .clkb(BRAM_PORTB_0_3_CLK),
        .dina(BRAM_PORTA_0_3_DIN),
        .doutb(BRAM_PORTB_0_3_DOUT),
        .ena(BRAM_PORTA_0_3_EN),
        .enb(BRAM_PORTB_0_3_EN),
        .wea(BRAM_PORTA_0_3_WE));
endmodule
