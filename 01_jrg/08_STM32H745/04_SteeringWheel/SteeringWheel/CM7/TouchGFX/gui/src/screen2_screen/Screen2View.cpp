#include <gui/screen2_screen/Screen2View.hpp>

Screen2View::Screen2View()
{

}

void Screen2View::setupScreen()
{
    Screen2ViewBase::setupScreen();
}

void Screen2View::tearDownScreen()
{
    Screen2ViewBase::tearDownScreen();
}

void Screen2View::nextpage(uint8_t page)
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

void Screen2View::updatevalues(HomeData_t *Data)
{
	
	Unicode::snprintfFloat(textTempHVBuffer, TEXTTEMPHV_SIZE, "%.1f", *Data->TempHV);
	textTempHV.invalidate();
	Unicode::snprintfFloat(textTempLVBuffer, TEXTTEMPLV_SIZE, "%.1f", *Data->TempLV);
	textTempLV.invalidate();
	Unicode::snprintfFloat(textVolHVBuffer, TEXTVOLHV_SIZE, "%.0f", *Data->VoltageHV);
	textVolHV.invalidate();
	Unicode::snprintfFloat(textVolLVBuffer, TEXTVOLLV_SIZE, "%.1f", *Data->VoltageLV);
	textVolLV.invalidate();
	Unicode::snprintfFloat(textTempMotorBuffer, TEXTTEMPMOTOR_SIZE, "%.0f", *Data->TMotorMax);
	textTempMotor.invalidate();
	Unicode::snprintfFloat(textTempInverterBuffer, TEXTTEMPINVERTER_SIZE, "%.0f", *Data->TInvMax);
	textTempInverter.invalidate();
	Unicode::snprintfFloat(textTempWaterBuffer, TEXTTEMPWATER_SIZE, "%.0f", *Data->TWater);
	textTempWater.invalidate();
	switch((int)(Data->TS_Error))
		{
			case 0:Unicode::snprintf(textErrorTSBuffer, TEXTERRORTS_SIZE, "No Error");break;
			case 1:Unicode::snprintf(textErrorTSBuffer, TEXTERRORTS_SIZE, "BMS");break;
			case 2:Unicode::snprintf(textErrorTSBuffer, TEXTERRORTS_SIZE, "IMD");break;
		}
	textErrorTS.invalidate();
		
	switch((*Data->TSState))
		{
			case 0:Unicode::snprintf(textTSStateBuffer, TEXTTSSTATE_SIZE, "TSOff");break;
			case 1:Unicode::snprintf(textTSStateBuffer, TEXTTSSTATE_SIZE, "TSOn");break;
			case 2:Unicode::snprintf(textTSStateBuffer, TEXTTSSTATE_SIZE, "R2D");break;
			case 3:Unicode::snprintf(textTSStateBuffer, TEXTTSSTATE_SIZE, "SD");break;
		}
		textTSState.invalidate();
		
		
	switch((int)(Data->Error))
		{
			case 0:Unicode::snprintf(textErrorElseBuffer, TEXTERRORELSE_SIZE, "No Error");break;
			case 1:Unicode::snprintf(textErrorElseBuffer, TEXTERRORELSE_SIZE, "VCU");break;
			case 2:Unicode::snprintf(textErrorElseBuffer, TEXTERRORELSE_SIZE, "DRS");break;
		}
	textErrorElse.invalidate();
	
}
