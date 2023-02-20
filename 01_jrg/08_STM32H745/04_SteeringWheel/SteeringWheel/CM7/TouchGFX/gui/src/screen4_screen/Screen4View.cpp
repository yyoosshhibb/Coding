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
	uint16_t wirelessstate;
	
	wirelessstate = *Data->Ethernet_State << 8 | *Data->LTE_State;
	
	
	Unicode::snprintfFloat(textTVCUBuffer, TEXTTVCU_SIZE, "%.1f", *Data->TVCU);
	textTVCU.invalidate();
	
	Unicode::snprintfFloat(textTCellavgBuffer, TEXTTCELLAVG_SIZE, "%.1f", *Data->T_Cell_avg);
	textTCellavg.invalidate();
	
	Unicode::snprintfFloat(textILVSBuffer, TEXTILVS_SIZE, "%.1f", *Data->I_LVS);
	textILVS.invalidate();
	
	Unicode::snprintfFloat(textUCellavgBuffer, TEXTUCELLAVG_SIZE, "%.1f", *Data->U_LVBat_avg);
	textUCellavg.invalidate();

		switch((*Data->CAN_State))
		{
			case 0:Unicode::snprintf(textCANStateBuffer, TEXTCANSTATE_SIZE, "OK");break;
			default:Unicode::snprintf(textCANStateBuffer, TEXTCANSTATE_SIZE, "Error");break;
		}
		textCANState.invalidate();
}
