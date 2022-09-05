## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property PACKAGE_PIN W5 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clock]


set_property PACKAGE_PIN V17 [get_ports {dip_switches_16bits_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[0]}]
set_property PACKAGE_PIN V16 [get_ports {dip_switches_16bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[1]}]
set_property PACKAGE_PIN W16 [get_ports {dip_switches_16bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[2]}]
set_property PACKAGE_PIN W17 [get_ports {dip_switches_16bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[3]}]
set_property PACKAGE_PIN W15 [get_ports {dip_switches_16bits_tri_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[4]}]
set_property PACKAGE_PIN V15 [get_ports {dip_switches_16bits_tri_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[5]}]
set_property PACKAGE_PIN W14 [get_ports {dip_switches_16bits_tri_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[6]}]
set_property PACKAGE_PIN W13 [get_ports {dip_switches_16bits_tri_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[7]}]
set_property PACKAGE_PIN V2 [get_ports {dip_switches_16bits_tri_i[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[8]}]
set_property PACKAGE_PIN T3 [get_ports {dip_switches_16bits_tri_i[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[9]}]
set_property PACKAGE_PIN T2 [get_ports {dip_switches_16bits_tri_i[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[10]}]
set_property PACKAGE_PIN R3 [get_ports {dip_switches_16bits_tri_i[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[11]}]
set_property PACKAGE_PIN W2 [get_ports {dip_switches_16bits_tri_i[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[12]}]
set_property PACKAGE_PIN U1 [get_ports {dip_switches_16bits_tri_i[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[13]}]
set_property PACKAGE_PIN T1 [get_ports {dip_switches_16bits_tri_i[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[14]}]
set_property PACKAGE_PIN R2 [get_ports {dip_switches_16bits_tri_i[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_16bits_tri_i[15]}]



set_property PACKAGE_PIN U16 [get_ports {ledOut_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[0]}]
set_property PACKAGE_PIN E19 [get_ports {ledOut_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[1]}]
set_property PACKAGE_PIN U19 [get_ports {ledOut_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[2]}]
set_property PACKAGE_PIN V19 [get_ports {ledOut_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[3]}]
set_property PACKAGE_PIN W18 [get_ports {ledOut_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[4]}]
set_property PACKAGE_PIN U15 [get_ports {ledOut_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[5]}]
set_property PACKAGE_PIN U14 [get_ports {ledOut_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[6]}]
set_property PACKAGE_PIN V14 [get_ports {ledOut_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[7]}]
set_property PACKAGE_PIN V13 [get_ports {ledOut_0[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[8]}]
set_property PACKAGE_PIN V3 [get_ports {ledOut_0[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[9]}]
set_property PACKAGE_PIN W3 [get_ports {ledOut_0[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[10]}]
set_property PACKAGE_PIN U3 [get_ports {ledOut_0[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[11]}]
set_property PACKAGE_PIN P3 [get_ports {ledOut_0[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[12]}]
set_property PACKAGE_PIN N3 [get_ports {ledOut_0[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[13]}]
set_property PACKAGE_PIN P1 [get_ports {ledOut_0[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[14]}]
set_property PACKAGE_PIN L1 [get_ports {ledOut_0[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ledOut_0[15]}]


set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]



set_property PACKAGE_PIN B18 [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN A18 [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]




set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
