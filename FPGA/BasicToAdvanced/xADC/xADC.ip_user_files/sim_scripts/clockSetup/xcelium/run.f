-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xADC.gen/sources_1/ip/clockSetup_2/clockSetup_clk_wiz.v" \
  "../../../../xADC.gen/sources_1/ip/clockSetup_2/clockSetup.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

