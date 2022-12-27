// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 21 12:23:30 2022
// Host        : DELL-DIR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top buffer_rams_blk_mem_gen_0_3 -prefix
//               buffer_rams_blk_mem_gen_0_3_ buffer_rams_blk_mem_gen_0_0_sim_netlist.v
// Design      : buffer_rams_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buffer_rams_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module buffer_rams_blk_mem_gen_0_3
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
  buffer_rams_blk_mem_gen_0_3_blk_mem_gen_v8_4_5 U0
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
gR6+ClYwW1w=
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
