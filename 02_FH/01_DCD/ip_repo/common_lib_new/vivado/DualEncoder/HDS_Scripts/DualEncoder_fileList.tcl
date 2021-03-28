set hdsFileList [list]
set ipFileList [list]
array set hdsFileDialectsArray [list]
lappend hdsFileList common_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/common_lib/hdl/D_FlipFlop_rtl.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/common_lib/hdl/D_FlipFlop_rtl.vhd") "VHDL_2008"
lappend hdsFileList common_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/common_lib/hdl/EdgeDetection_rtl.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/common_lib/hdl/EdgeDetection_rtl.vhd") "VHDL_2008"
lappend hdsFileList common_lib_new
lappend hdsFileList "C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/debouncer_edgedetection_struct.vhd"
set hdsFileDialectsArray("C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/debouncer_edgedetection_struct.vhd") "VHDL_2008"
lappend hdsFileList common_lib_new
lappend hdsFileList "C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/Encoding_rtl.vhd"
set hdsFileDialectsArray("C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/Encoding_rtl.vhd") "VHDL_2008"
lappend hdsFileList common_lib_new
lappend hdsFileList "C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/Counter_rtl.vhd"
set hdsFileDialectsArray("C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/Counter_rtl.vhd") "VHDL_2008"
lappend hdsFileList common_lib_new
lappend hdsFileList "C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/encoder_struct.vhd"
set hdsFileDialectsArray("C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/encoder_struct.vhd") "VHDL_2008"
lappend hdsFileList common_lib_new
lappend hdsFileList "C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/dualencoder_struct.vhd"
set hdsFileDialectsArray("C:/Users/Yoshi/Documents/FH/02_Master/01_DCD/ip_repo/common_lib_new/hdl/dualencoder_struct.vhd") "VHDL_2008"
set vlogGlobalFileList [list]

