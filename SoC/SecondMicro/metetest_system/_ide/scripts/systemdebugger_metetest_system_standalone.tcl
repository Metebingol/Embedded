# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Studies\Embedded\SoC\SecondMicro\metetest_system\_ide\scripts\systemdebugger_metetest_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Studies\Embedded\SoC\SecondMicro\metetest_system\_ide\scripts\systemdebugger_metetest_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183AA10BAA" && level==0 && jtag_device_ctx=="jsn-Basys3-210183AA10BAA-0362d093-0"}
fpga -file C:/Studies/Embedded/SoC/SecondMicro/metetest/_ide/bitstream/microBlazeWithFirst_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Studies/Embedded/SoC/SecondMicro/microBlazeWithFirst_wrapper/export/microBlazeWithFirst_wrapper/hw/microBlazeWithFirst_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Studies/Embedded/SoC/SecondMicro/metetest/Debug/metetest.elf
bpadd -addr &main
