
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2
kC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
_
#Helper process launched with PID %s4824*oasys2
75962default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1359.816 ; gain = 0.000
2default:defaulth px? 
?
>possible infinite loop; process does not have a wait statement2551*oasys2w
aC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/top.vhd2default:default2
592default:default8@Z8-2551h px? 
?
synthesizing module '%s'638*oasys2
top2default:default2w
aC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/top.vhd2default:default2
142default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

clockSetup2default:default2?
?C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/.Xil/Vivado-10452-DESKTOP-E5S1MHN/realtime/clockSetup_stub.vhdl2default:default2
52default:default2
clock2default:default2

clockSetup2default:default2w
aC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/top.vhd2default:default2
422default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

clockSetup2default:default2?
?C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/.Xil/Vivado-10452-DESKTOP-E5S1MHN/realtime/clockSetup_stub.vhdl2default:default2
142default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	adcDriver2default:default2{
gC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/adcDriver.vhd2default:default2
32default:default2
adc2default:default2
	adcDriver2default:default2w
aC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/top.vhd2default:default2
482default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	adcDriver2default:default2}
gC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/adcDriver.vhd2default:default2
162default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	xadcSetup2default:default2?
?C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/.Xil/Vivado-10452-DESKTOP-E5S1MHN/realtime/xadcSetup_stub.vhdl2default:default2
52default:default2
adc2default:default2
	xadcSetup2default:default2}
gC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/adcDriver.vhd2default:default2
402default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	xadcSetup2default:default2?
?C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/.Xil/Vivado-10452-DESKTOP-E5S1MHN/realtime/xadcSetup_stub.vhdl2default:default2
272default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	adcDriver2default:default2
12default:default2
12default:default2}
gC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/adcDriver.vhd2default:default2
162default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
22default:default2
12default:default2w
aC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/sources_1/new/top.vhd2default:default2
142default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
aux6P2default:default2
top2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
aux6N2default:default2
top2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
00:00:00.0012default:default2
1359.8162default:default2
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
?c:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.gen/sources_1/ip/clockSetup_2/clockSetup/clockSetup_in_context.xdc2default:default2
clock	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.gen/sources_1/ip/clockSetup_2/clockSetup/clockSetup_in_context.xdc2default:default2
clock	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.gen/sources_1/ip/xadcSetup/xadcSetup/xadcSetup_in_context.xdc2default:default2
adc/adc	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.gen/sources_1/ip/xadcSetup/xadcSetup/xadcSetup_in_context.xdc2default:default2
adc/adc	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
osc2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
102default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
132default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
142default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
152default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
162default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
172default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
182default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
192default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
202default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
212default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
222default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
232default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
242default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
252default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
262default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
272default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
282default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
292default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
302default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
312default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
322default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
332default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
342default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
352default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
362default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
372default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
382default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
392default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
402default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
412default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
422default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
432default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
442default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
832default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
842default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
852default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
862default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
872default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
882default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
892default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
902default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
912default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
922default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
932default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
942default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
952default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
962default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1012default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1022default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1032default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1042default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1052default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1062default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1072default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1082default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
PWMpin2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1272default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
PWMpin2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1282default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	SerialPin2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1302default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
	SerialPin2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
1312default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
RsRx2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
2682default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
RsRx2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
2692default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
RsTx2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
2702default:default8@Z12-584h px?
?
No ports matched '%s'.
584*	planAhead2
RsTx2default:default2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2
2712default:default8@Z12-584h px?
?
Finished Parsing XDC File [%s]
178*designutils2
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2}
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2}
iC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.srcs/constrs_1/imports/new/top.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2x
bC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1359.8162default:default2
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
00:00:00.0052default:default2
1359.8162default:default2
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
}Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
9Port %s in module %s is either unconnected or has no load4866*oasys2
aux6P2default:default2
top2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
aux6N2default:default2
top2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
{Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
zFinished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
tFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
#|1     |clockSetup    |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#|2     |xadcSetup     |         1|
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
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px? 
M
%s*synth25
!|1     |clockSetup_bbox |     1|
2default:defaulth px? 
M
%s*synth25
!|2     |xadcSetup_bbox  |     1|
2default:defaulth px? 
M
%s*synth25
!|3     |LUT2            |     1|
2default:defaulth px? 
M
%s*synth25
!|4     |FDRE            |    16|
2default:defaulth px? 
M
%s*synth25
!|5     |IBUF            |     2|
2default:defaulth px? 
M
%s*synth25
!|6     |OBUF            |    16|
2default:defaulth px? 
M
%s*synth25
!+------+----------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:25 . Memory (MB): peak = 1359.816 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1359.816 ; gain = 0.000
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
00:00:002default:default2
1359.8162default:default2
0.0002default:defaultZ17-268h px? 
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
1359.8162default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
483e40442default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262default:default2
722default:default2
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
00:00:292default:default2
00:00:312default:default2
1359.8162default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[C:/Studies/EmbeddedSystemRepo/Embedded-System/FPGA/libraries/xADC/xADC.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Aug 29 17:12:56 20222default:defaultZ17-206h px? 


End Record