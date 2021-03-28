set hdsFileList [list]
set ipFileList [list]
array set hdsFileDialectsArray [list]
lappend hdsFileList common_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/common_lib/hdl/Connection_rtl.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/common_lib/hdl/Connection_rtl.vhd") "VHDL_2008"
lappend hdsFileList common_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/common_lib/hdl/connectionencoderleds_struct.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/common_lib/hdl/connectionencoderleds_struct.vhd") "VHDL_2008"
set vlogGlobalFileList [list]

