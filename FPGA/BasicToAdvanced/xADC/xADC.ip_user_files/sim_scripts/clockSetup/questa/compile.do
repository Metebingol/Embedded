vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../ipstatic" "+incdir+../../../../xADC.gen/sources_1/ip/clockSetup_2" \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../ipstatic" "+incdir+../../../../xADC.gen/sources_1/ip/clockSetup_2" \
"../../../../xADC.gen/sources_1/ip/clockSetup_2/clockSetup_clk_wiz.v" \
"../../../../xADC.gen/sources_1/ip/clockSetup_2/clockSetup.v" \

vlog -work xil_defaultlib \
"glbl.v"

