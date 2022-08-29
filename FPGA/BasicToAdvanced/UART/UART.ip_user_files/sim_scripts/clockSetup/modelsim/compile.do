vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup_clk_wiz.v" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

