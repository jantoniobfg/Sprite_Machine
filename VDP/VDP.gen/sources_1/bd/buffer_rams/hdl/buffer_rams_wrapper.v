//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Dec 21 12:22:07 2022
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target buffer_rams_wrapper.bd
//Design      : buffer_rams_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module buffer_rams_wrapper
   (PREVIOUS_PORTA_1_addr,
    PREVIOUS_PORTA_1_clk,
    PREVIOUS_PORTA_1_din,
    PREVIOUS_PORTA_1_en,
    PREVIOUS_PORTA_1_we,
    PREVIOUS_PORTB_1_addr,
    PREVIOUS_PORTB_1_clk,
    PREVIOUS_PORTB_1_dout,
    PREVIOUS_PORTB_1_en,
    UPPER_PORTA_2_addr,
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
  input [8:0]PREVIOUS_PORTA_1_addr;
  input PREVIOUS_PORTA_1_clk;
  input [127:0]PREVIOUS_PORTA_1_din;
  input PREVIOUS_PORTA_1_en;
  input [0:0]PREVIOUS_PORTA_1_we;
  input [8:0]PREVIOUS_PORTB_1_addr;
  input PREVIOUS_PORTB_1_clk;
  output [127:0]PREVIOUS_PORTB_1_dout;
  input PREVIOUS_PORTB_1_en;
  input [8:0]UPPER_PORTA_2_addr;
  input UPPER_PORTA_2_clk;
  input [127:0]UPPER_PORTA_2_din;
  input UPPER_PORTA_2_en;
  input [0:0]UPPER_PORTA_2_we;
  input [8:0]UPPER_PORTB_2_addr;
  input UPPER_PORTB_2_clk;
  output [127:0]UPPER_PORTB_2_dout;
  input UPPER_PORTB_2_en;
  input [8:0]UPPER_PREVIOUS_PORTA_0_addr;
  input UPPER_PREVIOUS_PORTA_0_clk;
  input [127:0]UPPER_PREVIOUS_PORTA_0_din;
  input UPPER_PREVIOUS_PORTA_0_en;
  input [0:0]UPPER_PREVIOUS_PORTA_0_we;
  input [8:0]UPPER_PREVIOUS_PORTB_0_addr;
  input UPPER_PREVIOUS_PORTB_0_clk;
  output [127:0]UPPER_PREVIOUS_PORTB_0_dout;
  input UPPER_PREVIOUS_PORTB_0_en;

  wire [8:0]PREVIOUS_PORTA_1_addr;
  wire PREVIOUS_PORTA_1_clk;
  wire [127:0]PREVIOUS_PORTA_1_din;
  wire PREVIOUS_PORTA_1_en;
  wire [0:0]PREVIOUS_PORTA_1_we;
  wire [8:0]PREVIOUS_PORTB_1_addr;
  wire PREVIOUS_PORTB_1_clk;
  wire [127:0]PREVIOUS_PORTB_1_dout;
  wire PREVIOUS_PORTB_1_en;
  wire [8:0]UPPER_PORTA_2_addr;
  wire UPPER_PORTA_2_clk;
  wire [127:0]UPPER_PORTA_2_din;
  wire UPPER_PORTA_2_en;
  wire [0:0]UPPER_PORTA_2_we;
  wire [8:0]UPPER_PORTB_2_addr;
  wire UPPER_PORTB_2_clk;
  wire [127:0]UPPER_PORTB_2_dout;
  wire UPPER_PORTB_2_en;
  wire [8:0]UPPER_PREVIOUS_PORTA_0_addr;
  wire UPPER_PREVIOUS_PORTA_0_clk;
  wire [127:0]UPPER_PREVIOUS_PORTA_0_din;
  wire UPPER_PREVIOUS_PORTA_0_en;
  wire [0:0]UPPER_PREVIOUS_PORTA_0_we;
  wire [8:0]UPPER_PREVIOUS_PORTB_0_addr;
  wire UPPER_PREVIOUS_PORTB_0_clk;
  wire [127:0]UPPER_PREVIOUS_PORTB_0_dout;
  wire UPPER_PREVIOUS_PORTB_0_en;

  buffer_rams buffer_rams_i
       (.PREVIOUS_PORTA_1_addr(PREVIOUS_PORTA_1_addr),
        .PREVIOUS_PORTA_1_clk(PREVIOUS_PORTA_1_clk),
        .PREVIOUS_PORTA_1_din(PREVIOUS_PORTA_1_din),
        .PREVIOUS_PORTA_1_en(PREVIOUS_PORTA_1_en),
        .PREVIOUS_PORTA_1_we(PREVIOUS_PORTA_1_we),
        .PREVIOUS_PORTB_1_addr(PREVIOUS_PORTB_1_addr),
        .PREVIOUS_PORTB_1_clk(PREVIOUS_PORTB_1_clk),
        .PREVIOUS_PORTB_1_dout(PREVIOUS_PORTB_1_dout),
        .PREVIOUS_PORTB_1_en(PREVIOUS_PORTB_1_en),
        .UPPER_PORTA_2_addr(UPPER_PORTA_2_addr),
        .UPPER_PORTA_2_clk(UPPER_PORTA_2_clk),
        .UPPER_PORTA_2_din(UPPER_PORTA_2_din),
        .UPPER_PORTA_2_en(UPPER_PORTA_2_en),
        .UPPER_PORTA_2_we(UPPER_PORTA_2_we),
        .UPPER_PORTB_2_addr(UPPER_PORTB_2_addr),
        .UPPER_PORTB_2_clk(UPPER_PORTB_2_clk),
        .UPPER_PORTB_2_dout(UPPER_PORTB_2_dout),
        .UPPER_PORTB_2_en(UPPER_PORTB_2_en),
        .UPPER_PREVIOUS_PORTA_0_addr(UPPER_PREVIOUS_PORTA_0_addr),
        .UPPER_PREVIOUS_PORTA_0_clk(UPPER_PREVIOUS_PORTA_0_clk),
        .UPPER_PREVIOUS_PORTA_0_din(UPPER_PREVIOUS_PORTA_0_din),
        .UPPER_PREVIOUS_PORTA_0_en(UPPER_PREVIOUS_PORTA_0_en),
        .UPPER_PREVIOUS_PORTA_0_we(UPPER_PREVIOUS_PORTA_0_we),
        .UPPER_PREVIOUS_PORTB_0_addr(UPPER_PREVIOUS_PORTB_0_addr),
        .UPPER_PREVIOUS_PORTB_0_clk(UPPER_PREVIOUS_PORTB_0_clk),
        .UPPER_PREVIOUS_PORTB_0_dout(UPPER_PREVIOUS_PORTB_0_dout),
        .UPPER_PREVIOUS_PORTB_0_en(UPPER_PREVIOUS_PORTB_0_en));
endmodule
