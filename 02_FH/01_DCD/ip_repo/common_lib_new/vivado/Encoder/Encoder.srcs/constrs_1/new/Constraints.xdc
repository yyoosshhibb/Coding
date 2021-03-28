set_property PACKAGE_PIN W14 [get_ports A_in]
set_property PACKAGE_PIN Y14 [get_ports B_in]
set_property PACKAGE_PIN D18 [get_ports {count[3]}]
set_property PACKAGE_PIN G14 [get_ports {count[2]}]
set_property PACKAGE_PIN M15 [get_ports {count[1]}]
set_property PACKAGE_PIN M14 [get_ports {count[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports A_in]
set_property IOSTANDARD LVCMOS33 [get_ports B_in]

create_clock -period 8.000 -name clk -waveform {0.000 4.000}

set_property PACKAGE_PIN L16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN Y16 [get_ports res_btn]
set_property IOSTANDARD LVCMOS33 [get_ports res_btn]
set_property PULLDOWN true [get_ports res_btn]

set_property OFFCHIP_TERM NONE [get_ports count[3]]
set_property OFFCHIP_TERM NONE [get_ports count[2]]
set_property OFFCHIP_TERM NONE [get_ports count[1]]
set_property OFFCHIP_TERM NONE [get_ports count[0]]
