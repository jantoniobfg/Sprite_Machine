
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
2266.4842default:default2
0.0002default:defaultZ17-268h px? 
r
%s*common2Y
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: d7256a50
2default:defaulth px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.019 . Memory (MB): peak = 2266.484 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
2266.4842default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?IO Placement failed due to overutilization. This design contains %s I/O ports
 while the target %s, contains only %s available user I/O. The target device has %s usable I/O pins of which %s are already occupied by user-locked I/Os.
 To rectify this issue:
 1. Ensure you are targeting the correct device and package.  Select a larger device or different package if necessary.
 2. Check the top-level ports of the design to ensure the correct number of ports are specified.
 3. Consider design changes to reduce the number of I/Os necessary.
415*place2
11012default:default22
 device: 7z020 package: clg4002default:default2
2552default:default2
2552default:default2
02default:defaultZ30-415h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[0]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_addr_IBUF[10]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_addr_IBUF[11]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_addr_IBUF[12]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[1]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[2]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[3]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[4]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[5]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[6]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[7]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[8]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_addr_IBUF[9]_inst2default:default2
IBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place24
BRAM_PORTB_0_dout_OBUF[0]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[100]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[101]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[102]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[103]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[104]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[105]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[106]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[107]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[108]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[109]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[10]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[110]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[111]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[112]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[113]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[114]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[115]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[116]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[117]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[118]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[119]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[11]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[120]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[121]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[122]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[123]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[124]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[125]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[126]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[127]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[128]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[129]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[12]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[130]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[131]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[132]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[133]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[134]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[135]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[136]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[137]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[138]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[139]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[13]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[140]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[141]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[142]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[143]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[144]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[145]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[146]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[147]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[148]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[149]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[14]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[150]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[151]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[152]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[153]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[154]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[155]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[156]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[157]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[158]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[159]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[15]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[160]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[161]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[162]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[163]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[164]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[165]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[166]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[167]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[168]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[169]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place25
BRAM_PORTB_0_dout_OBUF[16]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[170]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[171]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[172]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[173]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[174]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[175]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[176]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[177]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
Instance %s (%s) is not placed
68*place26
 BRAM_PORTB_0_dout_OBUF[178]_inst2default:default2
OBUF2default:default8Z30-68h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Place 30-682default:default2
1002default:defaultZ17-14h px? 

%s*common2f
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 08fafee2
2default:defaulth px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2266.484 ; gain = 0.0002default:defaulth px? 
`
%s*common2G
3Phase 1 Placer Initialization | Checksum: 08fafee2
2default:defaulth px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2266.484 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
U
%s*common2<
(Ending Placer Task | Checksum: 08fafee2
2default:defaulth px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2266.484 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
12default:default2
02default:default2
1032default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan 10 13:52:46 20232default:defaultZ17-206h px? 


End Record