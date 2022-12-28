// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 21 12:23:30 2022
// Host        : DELL-DIR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top buffer_rams_blk_mem_gen_0_1 -prefix
//               buffer_rams_blk_mem_gen_0_1_ buffer_rams_blk_mem_gen_0_0_sim_netlist.v
// Design      : buffer_rams_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buffer_rams_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module buffer_rams_blk_mem_gen_0_1
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
  buffer_rams_blk_mem_gen_0_1_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54272)
`pragma protect data_block
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
VYXBsTnKJCI=
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
