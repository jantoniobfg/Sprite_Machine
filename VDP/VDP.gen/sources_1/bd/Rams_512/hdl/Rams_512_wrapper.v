//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Jan  4 16:21:26 2023
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target Rams_512_wrapper.bd
//Design      : Rams_512_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Rams_512_wrapper
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
  input [12:0]FRAME_512_PORTA_0_addr;
  input FRAME_512_PORTA_0_clk;
  input [511:0]FRAME_512_PORTA_0_din;
  input FRAME_512_PORTA_0_en;
  input [63:0]FRAME_512_PORTA_0_we;
  input [12:0]FRAME_512_PORTB_0_addr;
  input FRAME_512_PORTB_0_clk;
  output [511:0]FRAME_512_PORTB_0_dout;
  input FRAME_512_PORTB_0_en;
  input [11:0]SPRITE_512_PORTA_0_addr;
  input SPRITE_512_PORTA_0_clk;
  input [511:0]SPRITE_512_PORTA_0_din;
  input SPRITE_512_PORTA_0_en;
  input [0:0]SPRITE_512_PORTA_0_we;
  input [11:0]SPRITE_512_PORTB_0_addr;
  input SPRITE_512_PORTB_0_clk;
  output [511:0]SPRITE_512_PORTB_0_dout;
  input SPRITE_512_PORTB_0_en;
  input [7:0]UPPER_512_PORTA_0_addr;
  input UPPER_512_PORTA_0_clk;
  input [511:0]UPPER_512_PORTA_0_din;
  input UPPER_512_PORTA_0_en;
  input [0:0]UPPER_512_PORTA_0_we;
  input [7:0]UPPER_512_PORTB_0_addr;
  input UPPER_512_PORTB_0_clk;
  output [511:0]UPPER_512_PORTB_0_dout;
  input UPPER_512_PORTB_0_en;
  input [7:0]UPPER_PREVIOUS_512_PORTA_0_addr;
  input UPPER_PREVIOUS_512_PORTA_0_clk;
  input [511:0]UPPER_PREVIOUS_512_PORTA_0_din;
  input UPPER_PREVIOUS_512_PORTA_0_en;
  input [0:0]UPPER_PREVIOUS_512_PORTA_0_we;
  input [7:0]UPPER_PREVIOUS_512_PORTB_0_addr;
  input UPPER_PREVIOUS_512_PORTB_0_clk;
  output [511:0]UPPER_PREVIOUS_512_PORTB_0_dout;
  input UPPER_PREVIOUS_512_PORTB_0_en;

  wire [12:0]FRAME_512_PORTA_0_addr;
  wire FRAME_512_PORTA_0_clk;
  wire [511:0]FRAME_512_PORTA_0_din;
  wire FRAME_512_PORTA_0_en;
  wire [63:0]FRAME_512_PORTA_0_we;
  wire [12:0]FRAME_512_PORTB_0_addr;
  wire FRAME_512_PORTB_0_clk;
  wire [511:0]FRAME_512_PORTB_0_dout;
  wire FRAME_512_PORTB_0_en;
  wire [11:0]SPRITE_512_PORTA_0_addr;
  wire SPRITE_512_PORTA_0_clk;
  wire [511:0]SPRITE_512_PORTA_0_din;
  wire SPRITE_512_PORTA_0_en;
  wire [0:0]SPRITE_512_PORTA_0_we;
  wire [11:0]SPRITE_512_PORTB_0_addr;
  wire SPRITE_512_PORTB_0_clk;
  wire [511:0]SPRITE_512_PORTB_0_dout;
  wire SPRITE_512_PORTB_0_en;
  wire [7:0]UPPER_512_PORTA_0_addr;
  wire UPPER_512_PORTA_0_clk;
  wire [511:0]UPPER_512_PORTA_0_din;
  wire UPPER_512_PORTA_0_en;
  wire [0:0]UPPER_512_PORTA_0_we;
  wire [7:0]UPPER_512_PORTB_0_addr;
  wire UPPER_512_PORTB_0_clk;
  wire [511:0]UPPER_512_PORTB_0_dout;
  wire UPPER_512_PORTB_0_en;
  wire [7:0]UPPER_PREVIOUS_512_PORTA_0_addr;
  wire UPPER_PREVIOUS_512_PORTA_0_clk;
  wire [511:0]UPPER_PREVIOUS_512_PORTA_0_din;
  wire UPPER_PREVIOUS_512_PORTA_0_en;
  wire [0:0]UPPER_PREVIOUS_512_PORTA_0_we;
  wire [7:0]UPPER_PREVIOUS_512_PORTB_0_addr;
  wire UPPER_PREVIOUS_512_PORTB_0_clk;
  wire [511:0]UPPER_PREVIOUS_512_PORTB_0_dout;
  wire UPPER_PREVIOUS_512_PORTB_0_en;

  Rams_512 Rams_512_i
       (.FRAME_512_PORTA_0_addr(FRAME_512_PORTA_0_addr),
        .FRAME_512_PORTA_0_clk(FRAME_512_PORTA_0_clk),
        .FRAME_512_PORTA_0_din(FRAME_512_PORTA_0_din),
        .FRAME_512_PORTA_0_en(FRAME_512_PORTA_0_en),
        .FRAME_512_PORTA_0_we(FRAME_512_PORTA_0_we),
        .FRAME_512_PORTB_0_addr(FRAME_512_PORTB_0_addr),
        .FRAME_512_PORTB_0_clk(FRAME_512_PORTB_0_clk),
        .FRAME_512_PORTB_0_dout(FRAME_512_PORTB_0_dout),
        .FRAME_512_PORTB_0_en(FRAME_512_PORTB_0_en),
        .SPRITE_512_PORTA_0_addr(SPRITE_512_PORTA_0_addr),
        .SPRITE_512_PORTA_0_clk(SPRITE_512_PORTA_0_clk),
        .SPRITE_512_PORTA_0_din(SPRITE_512_PORTA_0_din),
        .SPRITE_512_PORTA_0_en(SPRITE_512_PORTA_0_en),
        .SPRITE_512_PORTA_0_we(SPRITE_512_PORTA_0_we),
        .SPRITE_512_PORTB_0_addr(SPRITE_512_PORTB_0_addr),
        .SPRITE_512_PORTB_0_clk(SPRITE_512_PORTB_0_clk),
        .SPRITE_512_PORTB_0_dout(SPRITE_512_PORTB_0_dout),
        .SPRITE_512_PORTB_0_en(SPRITE_512_PORTB_0_en),
        .UPPER_512_PORTA_0_addr(UPPER_512_PORTA_0_addr),
        .UPPER_512_PORTA_0_clk(UPPER_512_PORTA_0_clk),
        .UPPER_512_PORTA_0_din(UPPER_512_PORTA_0_din),
        .UPPER_512_PORTA_0_en(UPPER_512_PORTA_0_en),
        .UPPER_512_PORTA_0_we(UPPER_512_PORTA_0_we),
        .UPPER_512_PORTB_0_addr(UPPER_512_PORTB_0_addr),
        .UPPER_512_PORTB_0_clk(UPPER_512_PORTB_0_clk),
        .UPPER_512_PORTB_0_dout(UPPER_512_PORTB_0_dout),
        .UPPER_512_PORTB_0_en(UPPER_512_PORTB_0_en),
        .UPPER_PREVIOUS_512_PORTA_0_addr(UPPER_PREVIOUS_512_PORTA_0_addr),
        .UPPER_PREVIOUS_512_PORTA_0_clk(UPPER_PREVIOUS_512_PORTA_0_clk),
        .UPPER_PREVIOUS_512_PORTA_0_din(UPPER_PREVIOUS_512_PORTA_0_din),
        .UPPER_PREVIOUS_512_PORTA_0_en(UPPER_PREVIOUS_512_PORTA_0_en),
        .UPPER_PREVIOUS_512_PORTA_0_we(UPPER_PREVIOUS_512_PORTA_0_we),
        .UPPER_PREVIOUS_512_PORTB_0_addr(UPPER_PREVIOUS_512_PORTB_0_addr),
        .UPPER_PREVIOUS_512_PORTB_0_clk(UPPER_PREVIOUS_512_PORTB_0_clk),
        .UPPER_PREVIOUS_512_PORTB_0_dout(UPPER_PREVIOUS_512_PORTB_0_dout),
        .UPPER_PREVIOUS_512_PORTB_0_en(UPPER_PREVIOUS_512_PORTB_0_en));
endmodule
