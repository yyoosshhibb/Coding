<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="GLOBAL_ADC" URI="http://resources/4.0.22/app/GLOBAL_ADC/0" description="Initializes VADC GLOBAL and GROUP resources." version="4.0.22" minDaveVersion="4.0.0" instanceLabel="GLOBAL_ADC_0" appLabel="">
  <upwardMapList xsi:type="ResourceModel:RequiredApp" href="../../ADC_MEASUREMENT/v4_1_24/ADC_MEASUREMENT_0.app#//@requiredApps.0"/>
  <properties singleton="true" provideInit="true" sharable="true"/>
  <virtualSignals name="global_signal" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_global" hwSignal="global_signal" hwResource="//@hwResources.1" visible="true">
    <upwardMapList xsi:type="ResourceModel:Connections" href="../../ADC_MEASUREMENT/v4_1_24/ADC_MEASUREMENT_0.app#//@connections.53"/>
  </virtualSignals>
  <virtualSignals name="group0_end_of_arbitration_round" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g0_garbcnt" hwSignal="garbcnt" hwResource="//@hwResources.2" visible="true"/>
  <virtualSignals name="group0_input_queue" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g0_gqueuereq" hwSignal="gqueuereq" hwResource="//@hwResources.2" visible="true"/>
  <virtualSignals name="group0_input_scan" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g0_gscanreq" hwSignal="gscanreq" hwResource="//@hwResources.2" visible="true"/>
  <virtualSignals name="group0_sync_request_signal" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g0_gsyncreq" hwSignal="gsyncreq" hwResource="//@hwResources.2" visible="true"/>
  <virtualSignals name="group1_end_of_arbitration_round" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g1_garbcnt" hwSignal="garbcnt" hwResource="//@hwResources.3" visible="true"/>
  <virtualSignals name="group1_input_queue" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g1_gqueuereq" hwSignal="gqueuereq" hwResource="//@hwResources.3" visible="true"/>
  <virtualSignals name="group1_input_scan" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g1_gscanreq" hwSignal="gscanreq" hwResource="//@hwResources.3" visible="true"/>
  <virtualSignals name="group1_sync_request_signal" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/vs_global_adc_g1_gsyncreq" hwSignal="gsyncreq" hwResource="//@hwResources.3" visible="true"/>
  <requiredApps URI="http://resources/4.0.22/app/GLOBAL_ADC/0/appres_clock" requiredAppName="CLOCK_XMC4" requiringMode="SHARABLE">
    <downwardMapList xsi:type="ResourceModel:App" href="../../CLOCK_XMC4/v4_0_24/CLOCK_XMC4_0.app#/"/>
  </requiredApps>
  <hwResources name="Limit" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/hwres_vadc_global_Limit" resourceGroupUri="peripheral/vadc/*/global_limits" mResGrpUri="peripheral/vadc/*/global_limits">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/VADC/VADC_0.dd#//@provided.19"/>
  </hwResources>
  <hwResources name="Global" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/hwres_vadc_global" resourceGroupUri="peripheral/vadc/*/global" mResGrpUri="peripheral/vadc/*/global">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/VADC/VADC_0.dd#//@provided.4"/>
  </hwResources>
  <hwResources name="Group0" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/hwres_vadc_group0" resourceGroupUri="peripheral/vadc/*/group/0/config" mResGrpUri="peripheral/vadc/*/group/0/config">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/VADC/VADC_0.dd#//@provided.18"/>
  </hwResources>
  <hwResources name="Group1" URI="http://resources/4.0.22/app/GLOBAL_ADC/0/hwres_vadc_group1" resourceGroupUri="peripheral/vadc/*/group/1/config" mResGrpUri="peripheral/vadc/*/group/1/config">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/VADC/VADC_0.dd#//@provided.11"/>
  </hwResources>
</ResourceModel:App>
