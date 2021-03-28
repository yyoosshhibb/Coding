connect -url tcp:127.0.0.1:3121
source C:/Users/Yoshi/Documents/FH/02_Master/02_MIC/Vivado/LED_IRQ/LED_IRQ.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
loadhw -hw C:/Users/Yoshi/Documents/FH/02_Master/02_MIC/Vivado/LED_IRQ/LED_IRQ.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786719A"} -index 0
dow C:/Users/Yoshi/Documents/FH/02_Master/02_MIC/Vivado/LED_IRQ/LED_IRQ.sdk/Mem_Test/Debug/Mem_Test.elf
configparams force-mem-access 0
bpadd -addr &main
