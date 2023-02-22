#include <gui/screen4_screen/Screen4View.hpp>

Screen4View::Screen4View()
{

}

void Screen4View::setupScreen()
{
    Screen4ViewBase::setupScreen();
}

void Screen4View::tearDownScreen()
{
    Screen4ViewBase::tearDownScreen();
}

void Screen4View::nextpage(uint8_t page)
{
	switch (page)
		{
			case 0:application().gotoHomeScreenNoTransition(); break;
			case 1:application().gotoScreen2ScreenNoTransition(); break;
			case 2:application().gotoScreen3ScreenNoTransition(); break;
			case 3:application().gotoScreen4ScreenNoTransition(); break;
			case 4:application().gotoScreen5ScreenNoTransition(); break;
			case 5:application().gotoScreen6ScreenNoTransition(); break;
			case 6:application().gotoScreen7ScreenNoTransition(); break;
			//case 7:application().gotoScreen8ScreenNoTransition();	
	}
}

void Screen4View::updatevalues(ElectricsData_t *Data)
{
	Unicode::snprintfFloat(textTVCUBuffer, TEXTTVCU_SIZE, "%.1f", *Data->TVCU);
	textTVCU.invalidate();
	
	Unicode::snprintfFloat(textTLV1Buffer, TEXTTLV1_SIZE, "%.1f", *Data->T_LV_Cells[0]);
	Unicode::snprintfFloat(textTLV2Buffer, TEXTTLV2_SIZE, "%.1f", *Data->T_LV_Cells[1]);
	textTLV1.invalidate();
	textTLV2.invalidate();
	
	Unicode::snprintfFloat(textULV1Buffer, TEXTULV1_SIZE, "%.2f", *Data->U_LV_Cells[0]);
	Unicode::snprintfFloat(textULV2Buffer, TEXTULV2_SIZE, "%.2f", *Data->U_LV_Cells[1]);
	Unicode::snprintfFloat(textULV3Buffer, TEXTULV3_SIZE, "%.2f", *Data->U_LV_Cells[2]);
	Unicode::snprintfFloat(textULV4Buffer, TEXTULV4_SIZE, "%.2f", *Data->U_LV_Cells[3]);
	textULV1.invalidate();
	textULV2.invalidate();
	textULV3.invalidate();
	textULV4.invalidate();
	
	Unicode::snprintfFloat(textILVSBuffer, TEXTILVS_SIZE, "%.1f", *Data->I_LVS);
	textILVS.invalidate();
	
	Unicode::snprintfFloat(textTMV1Buffer, TEXTTMV1_SIZE, "%.1f", *Data->T_MV_Cells[0]);
	Unicode::snprintfFloat(textTMV2Buffer, TEXTTMV2_SIZE, "%.1f", *Data->T_MV_Cells[1]);
	Unicode::snprintfFloat(textTMV3Buffer, TEXTTMV3_SIZE, "%.1f", *Data->T_MV_Cells[2]);
	Unicode::snprintfFloat(textTMV4Buffer, TEXTTMV4_SIZE, "%.1f", *Data->T_MV_Cells[3]);
	Unicode::snprintfFloat(textTMV5Buffer, TEXTTMV5_SIZE, "%.1f", *Data->T_MV_Cells[4]);
	textTMV1.invalidate();
	textTMV2.invalidate();
	textTMV3.invalidate();
	textTMV4.invalidate();
	textTMV5.invalidate();
	
	Unicode::snprintfFloat(textUMV1Buffer, TEXTUMV1_SIZE, "%.2f", *Data->U_MV_Cells[0]);
	Unicode::snprintfFloat(textUMV2Buffer, TEXTUMV2_SIZE, "%.2f", *Data->U_MV_Cells[1]);
	Unicode::snprintfFloat(textUMV3Buffer, TEXTUMV3_SIZE, "%.2f", *Data->U_MV_Cells[2]);
	Unicode::snprintfFloat(textUMV4Buffer, TEXTUMV4_SIZE, "%.2f", *Data->U_MV_Cells[3]);
	Unicode::snprintfFloat(textUMV5Buffer, TEXTUMV5_SIZE, "%.2f", *Data->U_MV_Cells[4]);
	Unicode::snprintfFloat(textUMV6Buffer, TEXTUMV6_SIZE, "%.2f", *Data->U_MV_Cells[5]);
	Unicode::snprintfFloat(textUMV7Buffer, TEXTUMV7_SIZE, "%.2f", *Data->U_MV_Cells[6]);
	Unicode::snprintfFloat(textUMV8Buffer, TEXTUMV8_SIZE, "%.2f", *Data->U_MV_Cells[7]);
	Unicode::snprintfFloat(textUMV9Buffer, TEXTUMV9_SIZE, "%.2f", *Data->U_MV_Cells[8]);
	Unicode::snprintfFloat(textUMV10Buffer, TEXTUMV10_SIZE, "%.2f", *Data->U_MV_Cells[9]);
	Unicode::snprintfFloat(textUMV11Buffer, TEXTUMV11_SIZE, "%.2f", *Data->U_MV_Cells[10]);
	Unicode::snprintfFloat(textUMV12Buffer, TEXTUMV12_SIZE, "%.2f", *Data->U_MV_Cells[11]);
	textUMV1.invalidate();
	textUMV2.invalidate();
	textUMV3.invalidate();
	textUMV4.invalidate();
	textUMV5.invalidate();
	textUMV6.invalidate();
	textUMV7.invalidate();
	textUMV8.invalidate();
	textUMV9.invalidate();
	textUMV10.invalidate();
	textUMV11.invalidate();
	textUMV12.invalidate();
	
	Unicode::snprintfFloat(textUMVmaxDeltaBuffer, TEXTUMVMAXDELTA_SIZE, "%.2f", *Data->maxDelta);
	textUMVmaxDelta.invalidate();
	
	Unicode::snprintfFloat(textIMVBuffer, TEXTIMV_SIZE, "%.1f", *Data->I_MV_Bat);
	textIMV.invalidate();
	
}
