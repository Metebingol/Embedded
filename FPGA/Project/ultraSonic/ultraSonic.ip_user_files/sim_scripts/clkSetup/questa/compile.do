vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup_clk_wiz.v" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

