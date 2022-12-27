// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 21 12:23:31 2022
// Host        : DELL-DIR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/buffer_rams/ip/buffer_rams_blk_mem_gen_0_0/buffer_rams_blk_mem_gen_0_0_sim_netlist.v
// Design      : buffer_rams_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buffer_rams_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module buffer_rams_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [127:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [127:0]dina;
  wire [127:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.9322 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "330" *) 
  (* C_READ_DEPTH_B = "330" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "330" *) 
  (* C_WRITE_DEPTH_B = "330" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  buffer_rams_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[127:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54560)
`pragma protect data_block
+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
3cHJHGxZ8Q+U8o4=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
