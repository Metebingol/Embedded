# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Studies\Embedded\SoC\SecondMicro\test\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Studies\Embedded\SoC\SecondMicro\test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test}\
-hw {C:\Studies\Embedded\FPGA\BasicToAdvanced\microBlaze\microBlazeWithSecond_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Studies/Embedded/SoC/SecondMicro}

platform write
platform generate -domains 
platform active {test}
platform config -updatehw {C:/Studies/Embedded/FPGA/BasicToAdvanced/microBlaze/microBlazeWithSecond_wrapper.xsa}
platform config -updatehw {C:/Studies/Embedded/FPGA/BasicToAdvanced/microBlaze/microBlazeWithSecond_wrapper.xsa}
platform generate
platform generate
platform config -updatehw {C:/Studies/Embedded/FPGA/BasicToAdvanced/microBlaze/microBlazeWithSecond_wrapper.xsa}
platform generate -domains 
catch {platform remove test}
platform write
