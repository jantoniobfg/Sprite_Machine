//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Jan  4 10:43:30 2023
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target sprite_mem_wrapper.bd
//Design      : sprite_mem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sprite_mem_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_clk,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en);
  input [13:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  input [127:0]BRAM_PORTA_0_din;
  input BRAM_PORTA_0_en;
  input [0:0]BRAM_PORTA_0_we;
  input [13:0]BRAM_PORTB_0_addr;
  input BRAM_PORTB_0_clk;
  output [127:0]BRAM_PORTB_0_dout;
  input BRAM_PORTB_0_en;

  wire [13:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [127:0]BRAM_PORTA_0_din;
  wire BRAM_PORTA_0_en;
  wire [0:0]BRAM_PORTA_0_we;
  wire [13:0]BRAM_PORTB_0_addr;
  wire BRAM_PORTB_0_clk;
  wire [127:0]BRAM_PORTB_0_dout;
  wire BRAM_PORTB_0_en;

  sprite_mem sprite_mem_i
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
