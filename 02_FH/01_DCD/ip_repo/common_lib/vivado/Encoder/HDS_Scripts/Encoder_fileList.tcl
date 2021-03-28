set hdsFileList [list]
set ipFileList [list]
array set hdsFileDialectsArray [list]
lappend hdsFileList common_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/common_lib/hdl/Encoder_rtl.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/common_lib/hdl/Encoder_rtl.vhd") "VHDL_2008"
set vlogGlobalFileList [list]

