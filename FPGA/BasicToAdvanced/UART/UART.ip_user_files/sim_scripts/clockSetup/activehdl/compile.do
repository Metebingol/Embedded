vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup_clk_wiz.v" \
"../../../../UART.gen/sources_1/ip/clockSetup/clockSetup.v" \


vlog -work xil_defaultlib \
"glbl.v"

