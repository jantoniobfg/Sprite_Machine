-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Dec  9 16:04:19 2022
-- Host        : DESKTOP-S6J8FS7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/PC/Documents/FPGA/final_proj/VDP/VDP.gen/sources_1/bd/frame_buffer/ip/frame_buffer_blk_mem_gen_0_0/frame_buffer_blk_mem_gen_0_0_stub.vhdl
-- Design      : frame_buffer_blk_mem_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity frame_buffer_blk_mem_gen_0_0 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 511 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );

end frame_buffer_blk_mem_gen_0_0;

architecture stub of frame_buffer_blk_mem_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[63:0],addra[12:0],dina[511:0],clkb,enb,addrb[12:0],doutb[511:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_5,Vivado 2022.2";
begin
end;
