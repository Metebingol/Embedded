# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Studies\Embedded\SoC\firstMicroBlaze\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Studies\Embedded\SoC\firstMicroBlaze\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {firstMicroBlaze}\
-hw {C:\Studies\micro_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Studies/Embedded/SoC}

platform write
platform generate -domains 
platform active {firstMicroBlaze}
