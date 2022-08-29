vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup_clk_wiz.v" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

