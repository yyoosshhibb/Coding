<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="CMSIS_RTOS_RTX5" URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0" description="Keil RTX5 implementation of the CMSIS-RTOS API." version="4.0.4" minDaveVersion="4.0.0" instanceLabel="CMSIS_RTOS_RTX5_0" appLabel="">
  <properties singleton="true" provideInit="true" sharable="true"/>
  <requiredApps URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/appres_cpu" requiredAppName="CPU_CTRL_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CPU_CTRL_XMC4/v4_0_18/CPU_CTRL_XMC4_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/appres_clk" requiredAppName="CLOCK_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CLOCK_XMC4/v4_0_24/CLOCK_XMC4_0.app#/"/>
  </requiredApps>
  <hwResources name="systick" URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/hwres_systick" resourceGroupUri="peripheral/cpu/0/systick" mResGrpUri="peripheral/cpu/0/systick">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/CPU/CPU_0.dd#//@provided.2"/>
  </hwResources>
  <hwResources name="systick_exception" URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/hwres_exception_systick" resourceGroupUri="peripheral/cpu/0/exception/systick" mResGrpUri="peripheral/cpu/0/exception/systick">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/CPU/CPU_0.dd#//@provided.1"/>
  </hwResources>
  <hwResources name="pendsv_exception" URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/hwres_exception_pendsv" resourceGroupUri="peripheral/cpu/0/exception/pendsv" mResGrpUri="peripheral/cpu/0/exception/pendsv">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/CPU/CPU_0.dd#//@provided.7"/>
  </hwResources>
  <hwResources name="svcall_exception" URI="http://resources/4.0.4/app/CMSIS_RTOS_RTX5/0/hwres_exception_svcall" resourceGroupUri="peripheral/cpu/0/exception/svcall" mResGrpUri="peripheral/cpu/0/exception/svcall">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/CPU/CPU_0.dd#//@provided.5"/>
  </hwResources>
</ResourceModel:App>
