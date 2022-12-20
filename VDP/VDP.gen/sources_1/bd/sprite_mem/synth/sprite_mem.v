//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Dec 20 14:57:39 2022
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target sprite_mem.bd
//Design      : sprite_mem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "sprite_mem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sprite_mem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "sprite_mem.hwdef" *) 
module sprite_mem
   (SPRITE_PORTA_0_addr,
    SPRITE_PORTA_0_clk,
    SPRITE_PORTA_0_din,
    SPRITE_PORTA_0_en,
    SPRITE_PORTA_0_we,
    SPRITE_PORTB_0_addr,
    SPRITE_PORTB_0_clk,
    SPRITE_PORTB_0_dout,
    SPRITE_PORTB_0_en);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPRITE_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [13:0]SPRITE_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTA_0 CLK" *) input SPRITE_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTA_0 DIN" *) input [127:0]SPRITE_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTA_0 EN" *) input SPRITE_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTA_0 WE" *) input [0:0]SPRITE_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPRITE_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [13:0]SPRITE_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTB_0 CLK" *) input SPRITE_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTB_0 DOUT" *) output [127:0]SPRITE_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 SPRITE_PORTB_0 EN" *) input SPRITE_PORTB_0_en;

  wire [13:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [127:0]BRAM_PORTA_0_1_DIN;
  wire BRAM_PORTA_0_1_EN;
  wire [0:0]BRAM_PORTA_0_1_WE;
  wire [13:0]BRAM_PORTB_0_1_ADDR;
  wire BRAM_PORTB_0_1_CLK;
  wire [127:0]BRAM_PORTB_0_1_DOUT;
  wire BRAM_PORTB_0_1_EN;

  assign BRAM_PORTA_0_1_ADDR = SPRITE_PORTA_0_addr[13:0];
  assign BRAM_PORTA_0_1_CLK = SPRITE_PORTA_0_clk;
  assign BRAM_PORTA_0_1_DIN = SPRITE_PORTA_0_din[127:0];
  assign BRAM_PORTA_0_1_EN = SPRITE_PORTA_0_en;
  assign BRAM_PORTA_0_1_WE = SPRITE_PORTA_0_we[0];
  assign BRAM_PORTB_0_1_ADDR = SPRITE_PORTB_0_addr[13:0];
  assign BRAM_PORTB_0_1_CLK = SPRITE_PORTB_0_clk;
  assign BRAM_PORTB_0_1_EN = SPRITE_PORTB_0_en;
  assign SPRITE_PORTB_0_dout[127:0] = BRAM_PORTB_0_1_DOUT;
  sprite_mem_blk_mem_gen_0_0 sprite_mem
       (.addra(BRAM_PORTA_0_1_ADDR),
        .addrb(BRAM_PORTB_0_1_ADDR),
        .clka(BRAM_PORTA_0_1_CLK),
        .clkb(BRAM_PORTB_0_1_CLK),
        .dina(BRAM_PORTA_0_1_DIN),
        .doutb(BRAM_PORTB_0_1_DOUT),
        .ena(BRAM_PORTA_0_1_EN),
        .enb(BRAM_PORTB_0_1_EN),
        .wea(BRAM_PORTA_0_1_WE));
endmodule
