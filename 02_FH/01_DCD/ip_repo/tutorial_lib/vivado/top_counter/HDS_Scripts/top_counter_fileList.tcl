set hdsFileList [list]
set ipFileList [list]
array set hdsFileDialectsArray [list]
lappend hdsFileList tutorial_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/tutorial_lib/hdl/binary_counter_rtl.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/tutorial_lib/hdl/binary_counter_rtl.vhd") "VHDL_2008"
lappend hdsFileList tutorial_lib
lappend hdsFileList "$::env(HDS_PROJECT_DIR)/tutorial_lib/hdl/top_counter_struct.vhd"
set hdsFileDialectsArray("$::env(HDS_PROJECT_DIR)/tutorial_lib/hdl/top_counter_struct.vhd") "VHDL_2008"
set vlogGlobalFileList [list]

