create_clock -period 20.000 [get_ports clk]

set_property PACKAGE_PIN N18 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN P18 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]

set_property PACKAGE_PIN R17 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
