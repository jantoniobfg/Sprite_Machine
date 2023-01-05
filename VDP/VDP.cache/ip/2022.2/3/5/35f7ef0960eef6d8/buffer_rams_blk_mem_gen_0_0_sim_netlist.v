// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 21 12:23:30 2022
// Host        : DELL-DIR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ buffer_rams_blk_mem_gen_0_0_sim_netlist.v
// Design      : buffer_rams_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buffer_rams_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54480)
`pragma protect data_block
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
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
