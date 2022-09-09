# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Memory Page}]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set IO [ipgui::add_page $IPINST -name "IO" -display_name {IO Types}]
  ipgui::add_param $IPINST -name "outType1" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType2" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType3" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType4" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType5" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType6" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType7" -parent ${IO} -widget comboBox
  ipgui::add_param $IPINST -name "outType8" -parent ${IO} -widget comboBox

  #Adding Page
  set PWM_DutyCycle [ipgui::add_page $IPINST -name "PWM DutyCycle"]
  ipgui::add_param $IPINST -name "pwmFrequency1" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency2" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency3" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency4" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency5" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency6" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency7" -parent ${PWM_DutyCycle}
  ipgui::add_param $IPINST -name "pwmFrequency8" -parent ${PWM_DutyCycle}


}

proc update_PARAM_VALUE.outType1 { PARAM_VALUE.outType1 } {
	# Procedure called to update outType1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType1 { PARAM_VALUE.outType1 } {
	# Procedure called to validate outType1
	return true
}

proc update_PARAM_VALUE.outType2 { PARAM_VALUE.outType2 } {
	# Procedure called to update outType2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType2 { PARAM_VALUE.outType2 } {
	# Procedure called to validate outType2
	return true
}

proc update_PARAM_VALUE.outType3 { PARAM_VALUE.outType3 } {
	# Procedure called to update outType3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType3 { PARAM_VALUE.outType3 } {
	# Procedure called to validate outType3
	return true
}

proc update_PARAM_VALUE.outType4 { PARAM_VALUE.outType4 } {
	# Procedure called to update outType4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType4 { PARAM_VALUE.outType4 } {
	# Procedure called to validate outType4
	return true
}

proc update_PARAM_VALUE.outType5 { PARAM_VALUE.outType5 } {
	# Procedure called to update outType5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType5 { PARAM_VALUE.outType5 } {
	# Procedure called to validate outType5
	return true
}

proc update_PARAM_VALUE.outType6 { PARAM_VALUE.outType6 } {
	# Procedure called to update outType6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType6 { PARAM_VALUE.outType6 } {
	# Procedure called to validate outType6
	return true
}

proc update_PARAM_VALUE.outType7 { PARAM_VALUE.outType7 } {
	# Procedure called to update outType7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType7 { PARAM_VALUE.outType7 } {
	# Procedure called to validate outType7
	return true
}

proc update_PARAM_VALUE.outType8 { PARAM_VALUE.outType8 } {
	# Procedure called to update outType8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outType8 { PARAM_VALUE.outType8 } {
	# Procedure called to validate outType8
	return true
}

proc update_PARAM_VALUE.pwmFrequency1 { PARAM_VALUE.pwmFrequency1 } {
	# Procedure called to update pwmFrequency1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency1 { PARAM_VALUE.pwmFrequency1 } {
	# Procedure called to validate pwmFrequency1
	return true
}

proc update_PARAM_VALUE.pwmFrequency2 { PARAM_VALUE.pwmFrequency2 } {
	# Procedure called to update pwmFrequency2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency2 { PARAM_VALUE.pwmFrequency2 } {
	# Procedure called to validate pwmFrequency2
	return true
}

proc update_PARAM_VALUE.pwmFrequency3 { PARAM_VALUE.pwmFrequency3 } {
	# Procedure called to update pwmFrequency3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency3 { PARAM_VALUE.pwmFrequency3 } {
	# Procedure called to validate pwmFrequency3
	return true
}

proc update_PARAM_VALUE.pwmFrequency4 { PARAM_VALUE.pwmFrequency4 } {
	# Procedure called to update pwmFrequency4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency4 { PARAM_VALUE.pwmFrequency4 } {
	# Procedure called to validate pwmFrequency4
	return true
}

proc update_PARAM_VALUE.pwmFrequency5 { PARAM_VALUE.pwmFrequency5 } {
	# Procedure called to update pwmFrequency5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency5 { PARAM_VALUE.pwmFrequency5 } {
	# Procedure called to validate pwmFrequency5
	return true
}

proc update_PARAM_VALUE.pwmFrequency6 { PARAM_VALUE.pwmFrequency6 } {
	# Procedure called to update pwmFrequency6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency6 { PARAM_VALUE.pwmFrequency6 } {
	# Procedure called to validate pwmFrequency6
	return true
}

proc update_PARAM_VALUE.pwmFrequency7 { PARAM_VALUE.pwmFrequency7 } {
	# Procedure called to update pwmFrequency7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency7 { PARAM_VALUE.pwmFrequency7 } {
	# Procedure called to validate pwmFrequency7
	return true
}

proc update_PARAM_VALUE.pwmFrequency8 { PARAM_VALUE.pwmFrequency8 } {
	# Procedure called to update pwmFrequency8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.pwmFrequency8 { PARAM_VALUE.pwmFrequency8 } {
	# Procedure called to validate pwmFrequency8
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.outType1 { MODELPARAM_VALUE.outType1 PARAM_VALUE.outType1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType1}] ${MODELPARAM_VALUE.outType1}
}

proc update_MODELPARAM_VALUE.outType2 { MODELPARAM_VALUE.outType2 PARAM_VALUE.outType2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType2}] ${MODELPARAM_VALUE.outType2}
}

proc update_MODELPARAM_VALUE.outType3 { MODELPARAM_VALUE.outType3 PARAM_VALUE.outType3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType3}] ${MODELPARAM_VALUE.outType3}
}

proc update_MODELPARAM_VALUE.outType4 { MODELPARAM_VALUE.outType4 PARAM_VALUE.outType4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType4}] ${MODELPARAM_VALUE.outType4}
}

proc update_MODELPARAM_VALUE.outType5 { MODELPARAM_VALUE.outType5 PARAM_VALUE.outType5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType5}] ${MODELPARAM_VALUE.outType5}
}

proc update_MODELPARAM_VALUE.outType6 { MODELPARAM_VALUE.outType6 PARAM_VALUE.outType6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType6}] ${MODELPARAM_VALUE.outType6}
}

proc update_MODELPARAM_VALUE.outType7 { MODELPARAM_VALUE.outType7 PARAM_VALUE.outType7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType7}] ${MODELPARAM_VALUE.outType7}
}

proc update_MODELPARAM_VALUE.outType8 { MODELPARAM_VALUE.outType8 PARAM_VALUE.outType8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outType8}] ${MODELPARAM_VALUE.outType8}
}

proc update_MODELPARAM_VALUE.pwmFrequency1 { MODELPARAM_VALUE.pwmFrequency1 PARAM_VALUE.pwmFrequency1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency1}] ${MODELPARAM_VALUE.pwmFrequency1}
}

proc update_MODELPARAM_VALUE.pwmFrequency2 { MODELPARAM_VALUE.pwmFrequency2 PARAM_VALUE.pwmFrequency2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency2}] ${MODELPARAM_VALUE.pwmFrequency2}
}

proc update_MODELPARAM_VALUE.pwmFrequency3 { MODELPARAM_VALUE.pwmFrequency3 PARAM_VALUE.pwmFrequency3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency3}] ${MODELPARAM_VALUE.pwmFrequency3}
}

proc update_MODELPARAM_VALUE.pwmFrequency4 { MODELPARAM_VALUE.pwmFrequency4 PARAM_VALUE.pwmFrequency4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency4}] ${MODELPARAM_VALUE.pwmFrequency4}
}

proc update_MODELPARAM_VALUE.pwmFrequency5 { MODELPARAM_VALUE.pwmFrequency5 PARAM_VALUE.pwmFrequency5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency5}] ${MODELPARAM_VALUE.pwmFrequency5}
}

proc update_MODELPARAM_VALUE.pwmFrequency6 { MODELPARAM_VALUE.pwmFrequency6 PARAM_VALUE.pwmFrequency6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency6}] ${MODELPARAM_VALUE.pwmFrequency6}
}

proc update_MODELPARAM_VALUE.pwmFrequency7 { MODELPARAM_VALUE.pwmFrequency7 PARAM_VALUE.pwmFrequency7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency7}] ${MODELPARAM_VALUE.pwmFrequency7}
}

proc update_MODELPARAM_VALUE.pwmFrequency8 { MODELPARAM_VALUE.pwmFrequency8 PARAM_VALUE.pwmFrequency8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.pwmFrequency8}] ${MODELPARAM_VALUE.pwmFrequency8}
}

