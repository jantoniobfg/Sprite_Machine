
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.2/data/ip2default:defaultZ19-2313h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/utils_1/imports/synth_1/vdp.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2r
^C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/utils_1/imports/synth_1/vdp.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 

Command: %s
53*	vivadotcl2N
:synth_design -top memory_manager_512 -part xc7z020clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
498362default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1226.090 ; gain = 408.148
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2&
memory_manager_5122default:default2
 2default:default2w
aC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/memory_manager_512.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
Rams_512_wrapper2default:default2
 2default:default2?
jC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/hdl/Rams_512_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Rams_5122default:default2
 2default:default2z
dc:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/synth/Rams_512.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
Rams_512_blk_mem_gen_0_02default:default2
 2default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
Rams_512_blk_mem_gen_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
Rams_512_blk_mem_gen_0_12default:default2
 2default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_1_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
Rams_512_blk_mem_gen_0_12default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_1_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2;
'Rams_512_UPPER_PREVIOUS_512_mem_gen_0_02default:default2
 2default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'Rams_512_UPPER_PREVIOUS_512_mem_gen_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2,
Rams_512_blk_mem_gen_0_22default:default2
 2default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_2_stub.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
Rams_512_blk_mem_gen_0_22default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/.Xil/Vivado-51344-DELL-DIR/realtime/Rams_512_blk_mem_gen_0_2_stub.v2default:default2
52default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Rams_5122default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/synth/Rams_512.v2default:default2
122default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
Rams_512_wrapper2default:default2
 2default:default2
02default:default2
12default:default2?
jC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/hdl/Rams_512_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
matrix_operations_5122default:default2
 2default:default2m
WC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/m_op_512.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
matrix_operations_5122default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/m_op_512.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
write_enable_5122default:default2
 2default:default2k
UC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/we_512.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
write_enable_5122default:default2
 2default:default2
02default:default2
12default:default2k
UC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/we_512.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
memory_manager_5122default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.srcs/sources_1/new/memory_manager_512.v2default:default2
232default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[455]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[454]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[453]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[452]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[451]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[450]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[449]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[448]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[391]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[390]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[389]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[388]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[387]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[386]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[385]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[384]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[327]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[326]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[325]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[324]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[323]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[322]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[321]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[320]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[263]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[262]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[261]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[260]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[259]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[258]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[257]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[256]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[199]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[198]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[197]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[196]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[195]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[194]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[193]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[192]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[135]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[134]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[133]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[132]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[131]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[130]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[129]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
last_upper[128]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[71]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[70]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[69]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[68]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[67]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[66]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[65]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[64]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[63]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[62]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[61]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[60]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[59]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[58]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[57]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[56]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[55]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[54]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[53]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[52]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[51]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[50]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[49]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[48]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[47]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[46]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[45]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[44]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[43]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[42]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[41]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[40]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[39]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[38]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[37]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[36]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[35]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[34]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[33]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[32]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[31]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[30]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[29]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[28]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[27]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[26]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[25]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[24]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[23]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[22]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[21]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
last_upper[20]2default:default2)
matrix_operations_5122default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1343.109 ; gain = 525.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1343.109 ; gain = 525.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1343.109 ; gain = 525.168
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1202default:default2
1343.1092default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_0/Rams_512_blk_mem_gen_0_0/Rams_512_blk_mem_gen_0_0_in_context.xdc2default:default29
#rams/Rams_512_i/FRAME_512_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_0/Rams_512_blk_mem_gen_0_0/Rams_512_blk_mem_gen_0_0_in_context.xdc2default:default29
#rams/Rams_512_i/FRAME_512_mem_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_1/Rams_512_blk_mem_gen_0_1/Rams_512_blk_mem_gen_0_1_in_context.xdc2default:default2:
$rams/Rams_512_i/SPRITE_512_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_1/Rams_512_blk_mem_gen_0_1/Rams_512_blk_mem_gen_0_1_in_context.xdc2default:default2:
$rams/Rams_512_i/SPRITE_512_mem_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_2/Rams_512_blk_mem_gen_0_2/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_in_context.xdc2default:default2B
,rams/Rams_512_i/UPPER_PREVIOUS_512_mem_gen_0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_blk_mem_gen_0_2/Rams_512_blk_mem_gen_0_2/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_in_context.xdc2default:default2B
,rams/Rams_512_i/UPPER_PREVIOUS_512_mem_gen_0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_in_context.xdc2default:default29
#rams/Rams_512_i/UPPER_512_mem_gen_1	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.gen/sources_1/bd/Rams_512/ip/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0/Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0_in_context.xdc2default:default29
#rams/Rams_512_i/UPPER_512_mem_gen_1	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2k
UC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2k
UC:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1443.0592default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1443.0592default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:17 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 33    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:26 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:32 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:32 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:28 ; elapsed = 00:00:33 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
i
%s
*synth2Q
=+------+----------------------------------------+----------+
2default:defaulth p
x
? 
i
%s
*synth2Q
=|      |BlackBox name                           |Instances |
2default:defaulth p
x
? 
i
%s
*synth2Q
=+------+----------------------------------------+----------+
2default:defaulth p
x
? 
i
%s
*synth2Q
=|1     |Rams_512_blk_mem_gen_0_0                |         1|
2default:defaulth p
x
? 
i
%s
*synth2Q
=|2     |Rams_512_blk_mem_gen_0_1                |         1|
2default:defaulth p
x
? 
i
%s
*synth2Q
=|3     |Rams_512_UPPER_PREVIOUS_512_mem_gen_0_0 |         1|
2default:defaulth p
x
? 
i
%s
*synth2Q
=|4     |Rams_512_blk_mem_gen_0_2                |         1|
2default:defaulth p
x
? 
i
%s
*synth2Q
=+------+----------------------------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
c
%s*synth2K
7+------+--------------------------------------+------+
2default:defaulth px? 
c
%s*synth2K
7|      |Cell                                  |Count |
2default:defaulth px? 
c
%s*synth2K
7+------+--------------------------------------+------+
2default:defaulth px? 
c
%s*synth2K
7|1     |Rams_512_UPPER_PREVIOUS_512_mem_gen_0 |     1|
2default:defaulth px? 
c
%s*synth2K
7|2     |Rams_512_blk_mem_gen_0                |     3|
2default:defaulth px? 
c
%s*synth2K
7|5     |BUFG                                  |     1|
2default:defaulth px? 
c
%s*synth2K
7|6     |CARRY4                                |    27|
2default:defaulth px? 
c
%s*synth2K
7|7     |LUT1                                  |     7|
2default:defaulth px? 
c
%s*synth2K
7|8     |LUT2                                  |  1038|
2default:defaulth px? 
c
%s*synth2K
7|9     |LUT3                                  |   593|
2default:defaulth px? 
c
%s*synth2K
7|10    |LUT4                                  |   992|
2default:defaulth px? 
c
%s*synth2K
7|11    |LUT5                                  |   838|
2default:defaulth px? 
c
%s*synth2K
7|12    |LUT6                                  |  1808|
2default:defaulth px? 
c
%s*synth2K
7|13    |MUXF7                                 |     9|
2default:defaulth px? 
c
%s*synth2K
7|14    |FDRE                                  |  1074|
2default:defaulth px? 
c
%s*synth2K
7|15    |FDSE                                  |    16|
2default:defaulth px? 
c
%s*synth2K
7|16    |IBUF                                  |   587|
2default:defaulth px? 
c
%s*synth2K
7|17    |OBUF                                  |   514|
2default:defaulth px? 
c
%s*synth2K
7+------+--------------------------------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 250 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:36 . Memory (MB): peak = 1443.059 ; gain = 525.168
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:32 ; elapsed = 00:00:39 . Memory (MB): peak = 1443.059 ; gain = 625.117
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0952default:default2
1443.0592default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
362default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1443.0592default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
b772474c2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
1012default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:392default:default2
00:00:452default:default2
1443.0592default:default2
1032.0042default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/jabilio.000/Documents/git/Sprite_Machine/VDP/VDP.runs/synth_1/memory_manager_512.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
zExecuting : report_utilization -file memory_manager_512_utilization_synth.rpt -pb memory_manager_512_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan 10 13:50:05 20232default:defaultZ17-206h px? 


End Record