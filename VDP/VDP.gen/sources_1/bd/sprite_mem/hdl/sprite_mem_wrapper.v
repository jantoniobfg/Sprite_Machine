//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Dec 20 14:57:39 2022
//Host        : DELL-DIR running 64-bit major release  (build 9200)
//Command     : generate_target sprite_mem_wrapper.bd
//Design      : sprite_mem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sprite_mem_wrapper
   (SPRITE_PORTA_0_addr,
    SPRITE_PORTA_0_clk,
    SPRITE_PORTA_0_din,
    SPRITE_PORTA_0_en,
    SPRITE_PORTA_0_we,
    SPRITE_PORTB_0_addr,
    SPRITE_PORTB_0_clk,
    SPRITE_PORTB_0_dout,
    SPRITE_PORTB_0_en);
  input [13:0]SPRITE_PORTA_0_addr;
  input SPRITE_PORTA_0_clk;
  input [127:0]SPRITE_PORTA_0_din;
  input SPRITE_PORTA_0_en;
  input [0:0]SPRITE_PORTA_0_we;
  input [13:0]SPRITE_PORTB_0_addr;
  input SPRITE_PORTB_0_clk;
  output [127:0]SPRITE_PORTB_0_dout;
  input SPRITE_PORTB_0_en;

  wire [13:0]SPRITE_PORTA_0_addr;
  wire SPRITE_PORTA_0_clk;
  wire [127:0]SPRITE_PORTA_0_din;
  wire SPRITE_PORTA_0_en;
  wire [0:0]SPRITE_PORTA_0_we;
  wire [13:0]SPRITE_PORTB_0_addr;
  wire SPRITE_PORTB_0_clk;
  wire [127:0]SPRITE_PORTB_0_dout;
  wire SPRITE_PORTB_0_en;

  sprite_mem sprite_mem_i
       (.SPRITE_PORTA_0_addr(SPRITE_PORTA_0_addr),
        .SPRITE_PORTA_0_clk(SPRITE_PORTA_0_clk),
        .SPRITE_PORTA_0_din(SPRITE_PORTA_0_din),
        .SPRITE_PORTA_0_en(SPRITE_PORTA_0_en),
        .SPRITE_PORTA_0_we(SPRITE_PORTA_0_we),
        .SPRITE_PORTB_0_addr(SPRITE_PORTB_0_addr),
        .SPRITE_PORTB_0_clk(SPRITE_PORTB_0_clk),
        .SPRITE_PORTB_0_dout(SPRITE_PORTB_0_dout),
        .SPRITE_PORTB_0_en(SPRITE_PORTB_0_en));
endmodule
