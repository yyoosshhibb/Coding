set_property PACKAGE_PIN W14 [get_ports inA1]
set_property PACKAGE_PIN Y14 [get_ports inA2]
set_property PACKAGE_PIN T12 [get_ports inB1]
set_property PACKAGE_PIN U12 [get_ports inB2]
set_property PULLUP true [get_ports inA1]
set_property PULLUP true [get_ports inA2]
set_property PULLUP true [get_ports inB1]
set_property PULLUP true [get_ports inB2]
set_property PACKAGE_PIN M14 [get_ports outA1]
set_property PACKAGE_PIN M15 [get_ports outA2]
set_property PACKAGE_PIN G14 [get_ports outB1]
set_property PACKAGE_PIN D18 [get_ports outB2]
set_property IOSTANDARD LVCMOS33 [get_ports inA1]
set_property IOSTANDARD LVCMOS33 [get_ports inA2]
set_property IOSTANDARD LVCMOS33 [get_ports inB1]
set_property IOSTANDARD LVCMOS33 [get_ports inB2]
set_property IOSTANDARD LVCMOS33 [get_ports outA1]
set_property IOSTANDARD LVCMOS33 [get_ports outA2]
set_property IOSTANDARD LVCMOS33 [get_ports outB1]
set_property IOSTANDARD LVCMOS33 [get_ports outB2]

create_clock -period 8.000 -name clk -waveform {0.000 4.000}


