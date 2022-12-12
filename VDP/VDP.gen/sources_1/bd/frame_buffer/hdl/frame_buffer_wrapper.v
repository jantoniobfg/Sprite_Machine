//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Dec  9 16:00:47 2022
//Host        : DESKTOP-S6J8FS7 running 64-bit major release  (build 9200)
//Command     : generate_target frame_buffer_wrapper.bd
//Design      : frame_buffer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module frame_buffer_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en);
  input [12:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  input [511:0]BRAM_PORTA_0_din;
  input BRAM_PORTA_0_en;
  input [63:0]BRAM_PORTA_0_we;
  input [12:0]BRAM_PORTB_0_addr;
  input BRAM_PORTB_0_clk;
  output [511:0]BRAM_PORTB_0_dout;
  input BRAM_PORTB_0_en;

  wire [12:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [511:0]BRAM_PORTA_0_din;
  wire BRAM_PORTA_0_en;
  wire [63:0]BRAM_PORTA_0_we;
  wire [12:0]BRAM_PORTB_0_addr;
  wire BRAM_PORTB_0_clk;
  wire [511:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;

  frame_buffer frame_buffer_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
        .BRAM_PORTB_0_clk(BRAM_PORTB_0_clk),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
        .BRAM_PORTB_0_en(BRAM_PORTB_0_en));
endmodule
