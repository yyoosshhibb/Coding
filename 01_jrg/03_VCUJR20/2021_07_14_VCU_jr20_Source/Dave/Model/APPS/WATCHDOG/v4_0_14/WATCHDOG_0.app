<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="WATCHDOG" URI="http://resources/4.0.14/app/WATCHDOG/0" description="Provides interface to configure watchdog timer." mode="NOTSHARABLE" version="4.0.14" minDaveVersion="4.0.0" instanceLabel="WATCHDOG" appLabel="" containingProxySignal="true">
  <properties singleton="true" provideInit="true"/>
  <virtualSignals name="service_indication_pulse" URI="http://resources/4.0.14/app/WATCHDOG/0/vs_watchdog_srv_request" hwSignal="wdt_srv_request" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="event_pre_warning" URI="http://resources/4.0.14/app/WATCHDOG/0/vs_watchdog_prewarn_int" hwSignal="int" hwResource="//@hwResources.1"/>
  <requiredApps URI="http://resources/4.0.14/app/WATCHDOG/0/appres_clockapp" requiredAppName="CLOCK_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CLOCK_XMC4/v4_0_22/CLOCK_XMC4_0.app#/"/>
  </requiredApps>
  <requiredApps URI="http://resources/4.0.14/app/WATCHDOG/0/appres_scuglobalapp" requiredAppName="GLOBAL_SCU_XMC4" required="false" requiringMode="SHARABLE"/>
  <requiredApps URI="http://resources/4.0.14/app/WATCHDOG/0/appres_cpuctrlapp" requiredAppName="CPU_CTRL_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CPU_CTRL_XMC4/v4_0_16/CPU_CTRL_XMC4_0.app#/"/>
  </requiredApps>
  <hwResources name="wdt" URI="http://resources/4.0.14/app/WATCHDOG/0/hwres_wdt_wdt" resourceGroupUri="peripheral/wdt/*/wdt" mResGrpUri="peripheral/wdt/*/wdt">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/WDT/WDT_0.dd#//@provided.0"/>
  </hwResources>
  <hwResources name="gcu_prewarn" URI="http://resources/4.0.14/app/WATCHDOG/0/hwres_scu_gcu_interrupt_prewarn" resourceGroupUri="peripheral/scu/*/gcu/interrupt/prewarn" mResGrpUri="peripheral/scu/*/gcu/interrupt/prewarn">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/SCU/SCU_0.dd#//@provided.18"/>
  </hwResources>
  <connections URI="http://resources/4.0.14/app/WATCHDOG/0/http://resources/4.0.14/app/WATCHDOG/0/vs_watchdog_prewarn_int/http://resources/4.0.14/app/WATCHDOG/0/vs_scuglobalapp_node" systemDefined="true" sourceSignal="event_pre_warning" required="false" srcVirtualSignal="//@virtualSignals.1" containingProxySignal="true"/>
  <connections URI="http://resources/4.0.14/app/WATCHDOG/0/http://resources/4.0.14/app/WATCHDOG/0/vs_watchdog_prewarn_int/http://resources/4.0.14/app/WATCHDOG/0/vs_cpuctrllapp_node" systemDefined="true" sourceSignal="event_pre_warning" targetSignal="nmi_irq" srcVirtualSignal="//@virtualSignals.1" proxyTargetVirtualSignalUri="http://resources/4.0.16/app/CPU_CTRL_XMC4/0/vs_nmi_irq" containingProxySignal="true">
    <downwardMapList xsi:type="ResourceModel:VirtualSignal" href="../../CPU_CTRL_XMC4/v4_0_16/CPU_CTRL_XMC4_0.app#//@virtualSignals.0"/>
    <targetVirtualSignal href="../../CPU_CTRL_XMC4/v4_0_16/CPU_CTRL_XMC4_0.app#//@virtualSignals.0"/>
  </connections>
</ResourceModel:App>
