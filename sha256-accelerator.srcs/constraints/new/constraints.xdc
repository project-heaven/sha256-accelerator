create_clock -period 20.000 [get_ports clk]

#set_property PACKAGE_PIN N18 [get_ports clk]
#set_property PACKAGE_PIN P16 [get_ports rst_n]

#set_property PACKAGE_PIN R18 [get_ports button_down]
#set_property PACKAGE_PIN W13 [get_ports button_up]

#set_property PACKAGE_PIN V12 [get_ports digit_selection[0]]
#set_property PACKAGE_PIN T15 [get_ports digit_selection[1]]
#set_property PACKAGE_PIN T10 [get_ports digit_selection[2]]

#set_property PACKAGE_PIN T17 [get_ports sr_clk]
#set_property PACKAGE_PIN T14 [get_ports sr_refresh]
#set_property PACKAGE_PIN T11 [get_ports sr_data]

#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
#set_property IOSTANDARD LVCMOS33 [get_ports button_down]
#set_property IOSTANDARD LVCMOS33 [get_ports button_up]
#set_property IOSTANDARD LVCMOS33 [get_ports digit_selection]
#set_property IOSTANDARD LVCMOS33 [get_ports sr_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports sr_refresh]
#set_property IOSTANDARD LVCMOS33 [get_ports sr_data]