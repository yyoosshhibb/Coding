proc getScriptDirectory {} {
    set dispScriptFile [file normalize [info script]]
    set scriptFolder [file dirname $dispScriptFile]
    return $scriptFolder
}
set scriptDir [getScriptDirectory];
puts "launched tcl script from";
puts $scriptDir;


setws $scriptDir;
cd $scriptDir;
#set hdf_file system_wrapper.hdf;
set hdf_file ../apps/proj_zybo_awfg/system_wrapper.hdf;

if {[file exist hw1]} {
    if {[file isdirectory hw1]} {
		#deleteprojects -name hw1;
		updatehw -hw hw1 -newhwspec $hdf_file;		
    }
	
} else {
	puts "Creating new hardware platform - hw1"
	createhw -name hw1 -hwspec $hdf_file;
}

if {[file exist bsp1]} {
    if {[file isdirectory bsp1]} {	
		#deleteprojects -name bsp1;  
		regenbsp -bsp bsp1
    }
	
} else {
	puts "Creating new Board Support package - bsp1"
	createbsp -name bsp1 -proc ps7_cortexa9_0 -hwproject hw1 -os standalone;
}

if {[file exist app1]} {
    if {[file isdirectory app1]} {
		#deleteprojects -name app1;            
    }
	
} else {
	puts "Creating blank application project - app1"
	createapp -name app1 -app {Empty Application} -proc ps7_cortexa9_0 -hwproject hw1 -bsp bsp1 -os standalone;
	configapp -app app1 -add libraries "m";
}

puts "Copying MATLAB generated source files to app1 project"
exec cp ../MATLAB/CPU_ert_rtw/*.c ./app1/src;
exec cp ../MATLAB/CPU_ert_rtw/*.h ./app1/src;
exec cp ert_main.c ./app1/src;

puts "Cleaning the project"
projects -clean;

puts "Build the project"
projects -build;

puts "TCL script execution ended"
puts "press CTRL+c to exit"
vwait forever