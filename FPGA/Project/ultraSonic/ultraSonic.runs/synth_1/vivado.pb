
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/utils_1/imports/synth_1/sonic.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2n
ZC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/utils_1/imports/synth_1/sonic.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
r
Command: %s
53*	vivadotcl2A
-synth_design -top sonic -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
186482default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1253.203 ; gain = 0.000
2default:defaulth px? 
?
>possible infinite loop; process does not have a wait statement2551*oasys2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
792default:default8@Z8-2551h px? 
?
>possible infinite loop; process does not have a wait statement2551*oasys2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
1962default:default8@Z8-2551h px? 
?
>possible infinite loop; process does not have a wait statement2551*oasys2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
2182default:default8@Z8-2551h px? 
?
>possible infinite loop; process does not have a wait statement2551*oasys2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
2412default:default8@Z8-2551h px? 
?
synthesizing module '%s'638*oasys2
sonic2default:default2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
502default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clkSetup2default:default2?
~C:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.runs/synth_1/.Xil/Vivado-11300-DESKTOP-E5S1MHN/realtime/clkSetup_stub.vhdl2default:default2
52default:default2
i_clock2default:default2
clkSetup2default:default2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
662default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
clkSetup2default:default2?
~C:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.runs/synth_1/.Xil/Vivado-11300-DESKTOP-E5S1MHN/realtime/clkSetup_stub.vhdl2default:default2
162default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
sonic2default:default2
12default:default2
12default:default2f
PC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/sources_1/new/sonic.vhd2default:default2
502default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnD2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnL2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnR2default:default2
sonic2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
00:00:00.0042default:default2
1253.2032default:default2
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
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
nc:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.gen/sources_1/ip/clkSetup/clkSetup/clkSetup_in_context.xdc2default:default2
i_clock	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
nc:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.gen/sources_1/ip/clkSetup/clkSetup/clkSetup_in_context.xdc2default:default2
i_clock	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
osc2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
102default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1012default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1022default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1032default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1042default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1052default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1062default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1072default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1082default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[0]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1552default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[0]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1562default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[1]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1582default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[1]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1592default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[2]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1612default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
ctrl[2]2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1622default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
aom2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1642default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
aom2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1652default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
aom2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1662default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
aom2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1672default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
oscTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1752default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
oscTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1762default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
oscTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1772default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
oscTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1782default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
modLockTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1872default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
modLockTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1882default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
modLockTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1892default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
modLockTest2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1902default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
osc2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1952default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
osc2default:default2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2
1962default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2l
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2j
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2+
.Xil/sonic_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2j
VC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.srcs/constrs_1/imports/new/top.xdc2default:default2+
.Xil/sonic_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1253.2032default:default2
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
00:00:00.0042default:default2
1253.2032default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
Loading part: xc7a35tcpg236-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
,	   2 Input   32 Bit       Adders := 3     
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
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
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
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  15 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  15 Input    1 Bit        Muxes := 1     
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
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
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
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnD2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnL2default:default2
sonic2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnR2default:default2
sonic2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
{Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
zFinished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
tFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |clkSetup      |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
K
%s*synth23
+------+--------------+------+
2default:defaulth px? 
K
%s*synth23
|      |Cell          |Count |
2default:defaulth px? 
K
%s*synth23
+------+--------------+------+
2default:defaulth px? 
K
%s*synth23
|1     |clkSetup_bbox |     1|
2default:defaulth px? 
K
%s*synth23
|2     |CARRY4        |   136|
2default:defaulth px? 
K
%s*synth23
|3     |LUT1          |    53|
2default:defaulth px? 
K
%s*synth23
|4     |LUT2          |   416|
2default:defaulth px? 
K
%s*synth23
|5     |LUT3          |     2|
2default:defaulth px? 
K
%s*synth23
|6     |LUT4          |    12|
2default:defaulth px? 
K
%s*synth23
|7     |LUT5          |     4|
2default:defaulth px? 
K
%s*synth23
|8     |LUT6          |    25|
2default:defaulth px? 
K
%s*synth23
|9     |FDCE          |    32|
2default:defaulth px? 
K
%s*synth23
|10    |FDPE          |     4|
2default:defaulth px? 
K
%s*synth23
|11    |FDRE          |    97|
2default:defaulth px? 
K
%s*synth23
|12    |FDSE          |     2|
2default:defaulth px? 
K
%s*synth23
|13    |IBUF          |     5|
2default:defaulth px? 
K
%s*synth23
|14    |OBUF          |    10|
2default:defaulth px? 
K
%s*synth23
|15    |OBUFT         |    15|
2default:defaulth px? 
K
%s*synth23
+------+--------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 18 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:26 . Memory (MB): peak = 1253.203 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1253.203 ; gain = 0.000
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
00:00:00.0112default:default2
1253.2032default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1362default:defaultZ29-17h px? 
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
00:00:002default:default2
1254.0702default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
d359297f2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
712default:default2
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
00:00:332default:default2
00:00:342default:default2
1254.0702default:default2
0.8672default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
JC:/Studies/FPGA/practice/test/ultraSonic/ultraSonic.runs/synth_1/sonic.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2t
`Executing : report_utilization -file sonic_utilization_synth.rpt -pb sonic_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Aug  5 13:26:29 20222default:defaultZ17-206h px? 


End Record