set current_location_ [lindex $argv 0]
set sources_dir [lindex $argv 1] 

cd $current_location_
cd ..
set current_location [pwd]

if {[file exists $current_location/Generated_hdl/Generated_hdl.xpr]} {
open_project $current_location/Generated_hdl/Generated_hdl.xpr
} else {
create_project Generated_hdl $current_location/Generated_hdl -part xc7z010clg400-1
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
}

import_files $current_location/hdlsrc_main_mdl
reset_run synth_1
set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
reset_run synth_1
launch_runs synth_1 jobs 2
wait_on_run synth_1
open_run synth_1 -name synth_1
write_checkpoint -force $current_location/Generated_hdl/black_box_main_mdl.dcp

# ------------------------------------------------------------------------------------------

set fp [open $current_location/cat_type.txt r]
set cat [read $fp]

if {[lindex $cat 0] == 1} {
set subsystem_cell_name "design_1_i/wrapper/wrapper_1/U0/simulink_hdl"
} else {
set subsystem_cell_name "design_1_i/wrapper_uart/wrapper_codesign_0/U0/simulink_hdl"
}

# -------------------------- Opening base checkpoint ------------------------------------
open_checkpoint $sources_dir/bsw.dcp
cd $current_location/Generated_hdl 

# ----------- Loading generated synthesised netlists into balck box cells  ---------------
read_checkpoint -cell $subsystem_cell_name ./black_box_main_mdl.dcp

# running implementation and exporting .hwdef, .hdf and .bit files

opt_design
place_design
write_hwdef -force -file $current_location/system_wrapper.hwdef
route_design

#generate reports
report_timing_summary -file $current_location/post_route_timing_summary.rpt
report_utilization -file $current_location/post_route_util.rpt

#write bitstream
write_bitstream -force $current_location/bitfile.bit
write_sysdef -force -hwdef $current_location/system_wrapper.hwdef -bitfile $current_location/bitfile.bit $current_location/system_wrapper.hdf


