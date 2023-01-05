//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 28 14:27:24 2022
//Host        : DESKTOP-S6J8FS7 running 64-bit major release  (build 9200)
//Command     : generate_target buffer_rams.bd
//Design      : buffer_rams
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "buffer_rams,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=buffer_rams,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "buffer_rams.hwdef" *) 
module buffer_rams
   (UPPER_PORTA_2_addr,
    UPPER_PORTA_2_clk,
    UPPER_PORTA_2_din,
    UPPER_PORTA_2_en,
    UPPER_PORTA_2_we,
    UPPER_PORTB_2_addr,
    UPPER_PORTB_2_clk,
    UPPER_PORTB_2_dout,
    UPPER_PORTB_2_en,
    UPPER_PREVIOUS_PORTA_0_addr,
    UPPER_PREVIOUS_PORTA_0_clk,
    UPPER_PREVIOUS_PORTA_0_din,
    UPPER_PREVIOUS_PORTA_0_en,
    UPPER_PREVIOUS_PORTA_0_we,
    UPPER_PREVIOUS_PORTB_0_addr,
    UPPER_PREVIOUS_PORTB_0_clk,
    UPPER_PREVIOUS_PORTB_0_dout,
    UPPER_PREVIOUS_PORTB_0_en);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTA_2 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PORTA_2, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [8:0]UPPER_PORTA_2_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTA_2 CLK" *) input UPPER_PORTA_2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTA_2 DIN" *) input [127:0]UPPER_PORTA_2_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTA_2 EN" *) input UPPER_PORTA_2_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTA_2 WE" *) input [0:0]UPPER_PORTA_2_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTB_2 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PORTB_2, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [8:0]UPPER_PORTB_2_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTB_2 CLK" *) input UPPER_PORTB_2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTB_2 DOUT" *) output [127:0]UPPER_PORTB_2_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PORTB_2 EN" *) input UPPER_PORTB_2_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PREVIOUS_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [8:0]UPPER_PREVIOUS_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTA_0 CLK" *) input UPPER_PREVIOUS_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTA_0 DIN" *) input [127:0]UPPER_PREVIOUS_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTA_0 EN" *) input UPPER_PREVIOUS_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTA_0 WE" *) input [0:0]UPPER_PREVIOUS_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UPPER_PREVIOUS_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [8:0]UPPER_PREVIOUS_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTB_0 CLK" *) input UPPER_PREVIOUS_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTB_0 DOUT" *) output [127:0]UPPER_PREVIOUS_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 UPPER_PREVIOUS_PORTB_0 EN" *) input UPPER_PREVIOUS_PORTB_0_en;

  wire [8:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [127:0]BRAM_PORTA_0_1_DIN;
  wire BRAM_PORTA_0_1_EN;
  wire [0:0]BRAM_PORTA_0_1_WE;
  wire [8:0]BRAM_PORTA_2_1_ADDR;
  wire BRAM_PORTA_2_1_CLK;
  wire [127:0]BRAM_PORTA_2_1_DIN;
  wire BRAM_PORTA_2_1_EN;
  wire [0:0]BRAM_PORTA_2_1_WE;
  wire [8:0]BRAM_PORTB_0_1_ADDR;
  wire BRAM_PORTB_0_1_CLK;
  wire [127:0]BRAM_PORTB_0_1_DOUT;
  wire BRAM_PORTB_0_1_EN;
  wire [8:0]BRAM_PORTB_2_1_ADDR;
  wire BRAM_PORTB_2_1_CLK;
  wire [127:0]BRAM_PORTB_2_1_DOUT;
  wire BRAM_PORTB_2_1_EN;

  assign BRAM_PORTA_0_1_ADDR = UPPER_PREVIOUS_PORTA_0_addr[8:0];
  assign BRAM_PORTA_0_1_CLK = UPPER_PREVIOUS_PORTA_0_clk;
  assign BRAM_PORTA_0_1_DIN = UPPER_PREVIOUS_PORTA_0_din[127:0];
  assign BRAM_PORTA_0_1_EN = UPPER_PREVIOUS_PORTA_0_en;
  assign BRAM_PORTA_0_1_WE = UPPER_PREVIOUS_PORTA_0_we[0];
  assign BRAM_PORTA_2_1_ADDR = UPPER_PORTA_2_addr[8:0];
  assign BRAM_PORTA_2_1_CLK = UPPER_PORTA_2_clk;
  assign BRAM_PORTA_2_1_DIN = UPPER_PORTA_2_din[127:0];
  assign BRAM_PORTA_2_1_EN = UPPER_PORTA_2_en;
  assign BRAM_PORTA_2_1_WE = UPPER_PORTA_2_we[0];
  assign BRAM_PORTB_0_1_ADDR = UPPER_PREVIOUS_PORTB_0_addr[8:0];
  assign BRAM_PORTB_0_1_CLK = UPPER_PREVIOUS_PORTB_0_clk;
  assign BRAM_PORTB_0_1_EN = UPPER_PREVIOUS_PORTB_0_en;
  assign BRAM_PORTB_2_1_ADDR = UPPER_PORTB_2_addr[8:0];
  assign BRAM_PORTB_2_1_CLK = UPPER_PORTB_2_clk;
  assign BRAM_PORTB_2_1_EN = UPPER_PORTB_2_en;
  assign UPPER_PORTB_2_dout[127:0] = BRAM_PORTB_2_1_DOUT;
  assign UPPER_PREVIOUS_PORTB_0_dout[127:0] = BRAM_PORTB_0_1_DOUT;
  buffer_rams_blk_mem_gen_0_3 UPPER
       (.addra(BRAM_PORTA_2_1_ADDR),
        .addrb(BRAM_PORTB_2_1_ADDR),
        .clka(BRAM_PORTA_2_1_CLK),
        .clkb(BRAM_PORTB_2_1_CLK),
        .dina(BRAM_PORTA_2_1_DIN),
        .doutb(BRAM_PORTB_2_1_DOUT),
        .ena(BRAM_PORTA_2_1_EN),
        .enb(BRAM_PORTB_2_1_EN),
        .wea(BRAM_PORTA_2_1_WE));
  buffer_rams_blk_mem_gen_0_0 UPPER_PREVIOUS
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
