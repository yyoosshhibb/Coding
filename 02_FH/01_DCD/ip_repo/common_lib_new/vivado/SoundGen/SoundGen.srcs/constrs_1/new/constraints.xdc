set_property PACKAGE_PIN L16 [get_ports clk]
set_property PACKAGE_PIN Y16 [get_ports button]
set_property PACKAGE_PIN V20 [get_ports outH]
set_property PACKAGE_PIN U20 [get_ports outL]
set_property IOSTANDARD LVCMOS33 [get_ports button]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports outH]
set_property IOSTANDARD LVCMOS33 [get_ports outL]
set_property DRIVE 12 [get_ports outH]
create_clock -period 8.000 -name clk -waveform {0.000 4.000}

