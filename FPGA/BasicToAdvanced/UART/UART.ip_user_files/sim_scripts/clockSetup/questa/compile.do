vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup_clk_wiz.v" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

