connect -url tcp:127.0.0.1:3121
source D:/HDL/apps/proj_zybo_awfg/proj_zybo_awfg.sdk/system_wrapper_hw_platform_1/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786303A"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo 210279786303A" && level==0} -index 1
fpga -file D:/HDL/apps/proj_zybo_awfg/proj_zybo_awfg.runs/impl_1/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786303A"} -index 0
loadhw -hw D:/HDL/apps/proj_zybo_awfg/proj_zybo_awfg.sdk/system_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279786303A"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786303A"} -index 0
dow D:/HDL/apps/proj_zybo_awfg/proj_zybo_awfg.sdk/awfg/Debug/awfg.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279786303A"} -index 0
con
