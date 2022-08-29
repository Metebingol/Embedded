vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup_clk_wiz.v" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

