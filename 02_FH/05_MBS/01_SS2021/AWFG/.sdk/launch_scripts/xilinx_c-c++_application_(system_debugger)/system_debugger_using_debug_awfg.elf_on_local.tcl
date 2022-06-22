connect -url tcp:127.0.0.1:3121
source C:/Users/Yoshi/Documents/GitHub/Software/02_FH/05_MBS/AWFG/c_top_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279786719A" && level==0} -index 1
fpga -file C:/Users/Yoshi/Documents/GitHub/Software/02_FH/05_MBS/AWFG/c_top_wrapper_hw_platform_0/c_top_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
loadhw -hw C:/Users/Yoshi/Documents/GitHub/Software/02_FH/05_MBS/AWFG/c_top_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
dow C:/Users/Yoshi/Documents/GitHub/Software/02_FH/05_MBS/AWFG/AWFG/Debug/AWFG.elf
configparams force-mem-access 0
bpadd -addr &main
