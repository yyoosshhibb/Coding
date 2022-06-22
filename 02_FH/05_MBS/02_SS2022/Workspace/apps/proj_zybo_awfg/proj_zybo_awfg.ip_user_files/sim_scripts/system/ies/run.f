-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/axi_sbus_bridge \
  "../../../bd/system/ipshared/e78a/hdl/S00_AXI.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/busdef_pkg.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/busdef_pkg_body.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/cnt_modulus_c_rtl.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/cnt_modulus_rtl.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/register_array_rtl.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/sbus_mux5_rtl.vhd" \
  "../../../bd/system/ipshared/e78a/hdl/top_axi_sbus_bridge_struct.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_sbus_bridge_0_0/sim/system_axi_sbus_bridge_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_6 \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../proj_zybo_awfg.srcs/sources_1/bd/system/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib \
  "../../../bd/system/ipshared/b92f/hdl/FPGA_pkg.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/FPGA.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/bus_bridge_16_fsm.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/buscmd_b16_filesel_fsm.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/cnt_modulus_rtl.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/comp_timer_rtl.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/dac_ctrl_fsm.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib -v200x \
  "../../../bd/system/ipshared/b92f/hdl/busdef_pkg.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib \
  "../../../bd/system/ipshared/b92f/hdl/registers_rtl.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib -v200x \
  "../../../bd/system/ipshared/b92f/hdl/comp_signal_debounce_rtl.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib \
  "../../../bd/system/ipshared/b92f/hdl/uart_rx_fsm.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/uart_tx_fsm.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/uart_top_struct.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/uart_bridge_32_struct.vhd" \
  "../../../bd/system/ipshared/b92f/hdl/uart_regs_rtl.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib -v200x \
  "../../../bd/system/ipshared/b92f/hdl/busdef_pkg_body.vhd" \
-endlib
-makelib ies_lib/sbus_awfg_lib \
  "../../../bd/system/ipshared/b92f/hdl/top_awfg_struct.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_sbus_awfg_0_0/sim/system_sbus_awfg_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

