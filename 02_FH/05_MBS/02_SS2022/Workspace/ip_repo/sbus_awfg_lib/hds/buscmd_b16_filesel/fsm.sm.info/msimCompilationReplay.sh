cd D:/HDL/compiso_tb
D:/MentorGraphics/modeltech64_10.2c/win64/vdir -prop cmpltime -r >& hds_compiso_tb_vdir_tmp
cd $HDS_PROJECT_DIR/compiso_tb/work
D:/MentorGraphics/modeltech64_10.2c/win64/vcom -work "compiso_tb" -nologo -f D:/HDL/compiso_tb/hds/buscmd_b16_filesel/fsm.sm.info/Files0
