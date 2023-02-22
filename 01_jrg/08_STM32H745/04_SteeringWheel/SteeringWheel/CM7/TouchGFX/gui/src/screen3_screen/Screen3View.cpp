#include <gui/screen3_screen/Screen3View.hpp>

Screen3View::Screen3View()
{

}

void Screen3View::setupScreen()
{
    Screen3ViewBase::setupScreen();
}

void Screen3View::tearDownScreen()
{
    Screen3ViewBase::tearDownScreen();
}

void Screen3View::nextpage(uint8_t page)
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

void Screen3View::updatevalues(BatteryData_t *Data)
{
	Unicode::snprintfFloat(textTCellminBuffer, TEXTTCELLMIN_SIZE, "%.1f", *Data->TCells[0]);
	textTCellmin.invalidate();
	Unicode::snprintfFloat(textTCellmaxBuffer, TEXTTCELLMAX_SIZE, "%.1f", *Data->TCells[1]);
	textTCellmax.invalidate();
	Unicode::snprintfFloat(textTCellavgBuffer, TEXTTCELLAVG_SIZE, "%.1f", *Data->TCells[2]);
	textTCellavg.invalidate();
	
	Unicode::snprintfFloat(textUCellminBuffer, TEXTUCELLMIN_SIZE, "%.2f", *Data->UCells[0]);
	textUCellmin.invalidate();
	Unicode::snprintfFloat(textUCellmaxBuffer, TEXTUCELLMAX_SIZE, "%.2f", *Data->UCells[1]);
	textUCellmax.invalidate();
	Unicode::snprintfFloat(textUCellavgBuffer, TEXTUCELLAVG_SIZE, "%.2f", *Data->UCells[2]);
	textUCellavg.invalidate();
	
	Unicode::snprintfFloat(textDutyFanBuffer, TEXTDUTYFAN_SIZE, "%.1f", *Data->dutyFAN);
	textDutyFan.invalidate();
	
	Unicode::snprintfFloat(textSoCBuffer, TEXTSOC_SIZE, "%.1f", *Data->SoC);
	textSoC.invalidate();
	
	Unicode::snprintfFloat(textPCMBuffer, TEXTPCM_SIZE, "%.1f", *Data->PCM_State);
	textSoC.invalidate();
}
