vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup_clk_wiz.v" \
"../../../../ultraSonic.gen/sources_1/ip/clkSetup/clkSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

