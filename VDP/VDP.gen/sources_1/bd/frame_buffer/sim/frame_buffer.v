//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 21 12:04:35 2022
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target frame_buffer.bd
//Design      : frame_buffer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "frame_buffer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=frame_buffer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "frame_buffer.hwdef" *) 
module frame_buffer
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1, READ_WRITE_MODE WRITE_ONLY" *) input [14:0]BRAM_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 CLK" *) input BRAM_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN" *) input [127:0]BRAM_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN" *) input BRAM_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE" *) input [15:0]BRAM_PORTA_0_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1, READ_WRITE_MODE READ_ONLY" *) input [14:0]BRAM_PORTB_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 CLK" *) input BRAM_PORTB_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 DOUT" *) output [127:0]BRAM_PORTB_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB_0 EN" *) input BRAM_PORTB_0_en;

  wire [14:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [127:0]BRAM_PORTA_0_1_DIN;
  wire BRAM_PORTA_0_1_EN;
  wire [15:0]BRAM_PORTA_0_1_WE;
  wire [14:0]BRAM_PORTB_0_1_ADDR;
  wire BRAM_PORTB_0_1_CLK;
  wire [127:0]BRAM_PORTB_0_1_DOUT;
  wire BRAM_PORTB_0_1_EN;

  assign BRAM_PORTA_0_1_ADDR = BRAM_PORTA_0_addr[14:0];
  assign BRAM_PORTA_0_1_CLK = BRAM_PORTA_0_clk;
  assign BRAM_PORTA_0_1_DIN = BRAM_PORTA_0_din[127:0];
  assign BRAM_PORTA_0_1_EN = BRAM_PORTA_0_en;
  assign BRAM_PORTA_0_1_WE = BRAM_PORTA_0_we[15:0];
  assign BRAM_PORTB_0_1_ADDR = BRAM_PORTB_0_addr[14:0];
  assign BRAM_PORTB_0_1_CLK = BRAM_PORTB_0_clk;
  assign BRAM_PORTB_0_1_EN = BRAM_PORTB_0_en;
  assign BRAM_PORTB_0_dout[127:0] = BRAM_PORTB_0_1_DOUT;
  frame_buffer_blk_mem_gen_0_0 blk_mem_gen_0
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
