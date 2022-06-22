vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_5
vlib questa_lib/msim/processing_system7_vip_v1_0_7
vlib questa_lib/msim/axi_sbus_bridge
vlib questa_lib/msim/xlconstant_v1_1_6
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/sbus_awfg_lib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 questa_lib/msim/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 questa_lib/msim/processing_system7_vip_v1_0_7
vmap axi_sbus_bridge questa_lib/msim/axi_sbus_bridge
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap sbus_awfg_lib questa_lib/msim/sbus_awfg_lib

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work axi_sbus_bridge -64 -93 \
"../../../bd/system/ipshared/e78a/hdl/S00_AXI.vhd" \
"../../../bd/system/ipshared/e78a/hdl/busdef_pkg.vhd" \
"../../../bd/system/ipshared/e78a/hdl/busdef_pkg_body.vhd" \
"../../../bd/system/ipshared/e78a/hdl/cnt_modulus_c_rtl.vhd" \
"../../../bd/system/ipshared/e78a/hdl/cnt_modulus_rtl.vhd" \
"../../../bd/system/ipshared/e78a/hdl/register_array_rtl.vhd" \
"../../../bd/system/ipshared/e78a/hdl/sbus_mux5_rtl.vhd" \
"../../../bd/system/ipshared/e78a/hdl/top_axi_sbus_bridge_struct.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_sbus_bridge_0_0/sim/system_axi_sbus_bridge_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \

vlog -work xlconstant_v1_1_6 -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_m00e_0.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vcom -work sbus_awfg_lib -64 -93 \
"../../../bd/system/ipshared/b92f/hdl/FPGA_pkg.vhd" \
"../../../bd/system/ipshared/b92f/hdl/FPGA.vhd" \
"../../../bd/system/ipshared/b92f/hdl/bus_bridge_16_fsm.vhd" \
"../../../bd/system/ipshared/b92f/hdl/buscmd_b16_filesel_fsm.vhd" \
"../../../bd/system/ipshared/b92f/hdl/cnt_modulus_rtl.vhd" \
"../../../bd/system/ipshared/b92f/hdl/comp_timer_rtl.vhd" \
"../../../bd/system/ipshared/b92f/hdl/dac_ctrl_fsm.vhd" \

vcom -work sbus_awfg_lib -64 -2008 \
"../../../bd/system/ipshared/b92f/hdl/busdef_pkg.vhd" \

vcom -work sbus_awfg_lib -64 -93 \
"../../../bd/system/ipshared/b92f/hdl/registers_rtl.vhd" \

vcom -work sbus_awfg_lib -64 -2008 \
"../../../bd/system/ipshared/b92f/hdl/comp_signal_debounce_rtl.vhd" \

vcom -work sbus_awfg_lib -64 -93 \
"../../../bd/system/ipshared/b92f/hdl/uart_rx_fsm.vhd" \
"../../../bd/system/ipshared/b92f/hdl/uart_tx_fsm.vhd" \
"../../../bd/system/ipshared/b92f/hdl/uart_top_struct.vhd" \
"../../../bd/system/ipshared/b92f/hdl/uart_bridge_32_struct.vhd" \
"../../../bd/system/ipshared/b92f/hdl/uart_regs_rtl.vhd" \

vcom -work sbus_awfg_lib -64 -2008 \
"../../../bd/system/ipshared/b92f/hdl/busdef_pkg_body.vhd" \

vcom -work sbus_awfg_lib -64 -93 \
"../../../bd/system/ipshared/b92f/hdl/top_awfg_struct.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_sbus_awfg_0_0/sim/system_sbus_awfg_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/verilog" "+incdir+../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

