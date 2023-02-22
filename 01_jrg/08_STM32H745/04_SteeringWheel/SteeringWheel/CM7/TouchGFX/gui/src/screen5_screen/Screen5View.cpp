#include <gui/screen5_screen/Screen5View.hpp>

Screen5View::Screen5View()
{

}

void Screen5View::setupScreen()
{
    Screen5ViewBase::setupScreen();
}

void Screen5View::tearDownScreen()
{
    Screen5ViewBase::tearDownScreen();
}

void Screen5View::nextpage(uint8_t page)
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

void Screen5View::updatevalues(TireTemps_t *Data)
{
	Unicode::snprintfFloat(textTTireFL1Buffer, TEXTTTIREFL1_SIZE, "%.1f", *Data->TireTempFL[0]);
	Unicode::snprintfFloat(textTTireFL2Buffer, TEXTTTIREFL2_SIZE, "%.1f", *Data->TireTempFL[1]);
	Unicode::snprintfFloat(textTTireFL3Buffer, TEXTTTIREFL3_SIZE, "%.1f", *Data->TireTempFL[2]);
	Unicode::snprintfFloat(textTTireFL4Buffer, TEXTTTIREFL4_SIZE, "%.1f", *Data->TireTempFL[3]);
	Unicode::snprintfFloat(textTTireFL5Buffer, TEXTTTIREFL5_SIZE, "%.1f", *Data->TireTempFL[4]);
	Unicode::snprintfFloat(textTTireFL6Buffer, TEXTTTIREFL6_SIZE, "%.1f", *Data->TireTempFL[5]);
	Unicode::snprintfFloat(textTTireFL7Buffer, TEXTTTIREFL7_SIZE, "%.1f", *Data->TireTempFL[6]);
	Unicode::snprintfFloat(textTTireFL8Buffer, TEXTTTIREFL8_SIZE, "%.1f", *Data->TireTempFL[7]);
	textTTireFL1.invalidate();
	textTTireFL2.invalidate();
	textTTireFL3.invalidate();
	textTTireFL4.invalidate();
	textTTireFL5.invalidate();
	textTTireFL6.invalidate();
	textTTireFL7.invalidate();
	textTTireFL8.invalidate();
	
	Unicode::snprintfFloat(textTTireFR1Buffer, TEXTTTIREFR1_SIZE, "%.1f", *Data->TireTempFR[0]);
	Unicode::snprintfFloat(textTTireFR2Buffer, TEXTTTIREFR2_SIZE, "%.1f", *Data->TireTempFR[1]);
	Unicode::snprintfFloat(textTTireFR3Buffer, TEXTTTIREFR3_SIZE, "%.1f", *Data->TireTempFR[2]);
	Unicode::snprintfFloat(textTTireFR4Buffer, TEXTTTIREFR4_SIZE, "%.1f", *Data->TireTempFR[3]);
	Unicode::snprintfFloat(textTTireFR5Buffer, TEXTTTIREFR5_SIZE, "%.1f", *Data->TireTempFR[4]);
	Unicode::snprintfFloat(textTTireFR6Buffer, TEXTTTIREFR6_SIZE, "%.1f", *Data->TireTempFR[5]);
	Unicode::snprintfFloat(textTTireFR7Buffer, TEXTTTIREFR7_SIZE, "%.1f", *Data->TireTempFR[6]);
	Unicode::snprintfFloat(textTTireFR8Buffer, TEXTTTIREFR8_SIZE, "%.1f", *Data->TireTempFR[7]);
	textTTireFR1.invalidate();
	textTTireFR2.invalidate();
	textTTireFR3.invalidate();
	textTTireFR4.invalidate();
	textTTireFR5.invalidate();
	textTTireFR6.invalidate();
	textTTireFR7.invalidate();
	textTTireFR8.invalidate();
	
	Unicode::snprintfFloat(textTTireRL1Buffer, TEXTTTIRERL1_SIZE, "%.1f", *Data->TireTempRL[0]);
	Unicode::snprintfFloat(textTTireRL2Buffer, TEXTTTIRERL2_SIZE, "%.1f", *Data->TireTempRL[1]);
	Unicode::snprintfFloat(textTTireRL3Buffer, TEXTTTIRERL3_SIZE, "%.1f", *Data->TireTempRL[2]);
	Unicode::snprintfFloat(textTTireRL4Buffer, TEXTTTIRERL4_SIZE, "%.1f", *Data->TireTempRL[3]);
	Unicode::snprintfFloat(textTTireRL5Buffer, TEXTTTIRERL5_SIZE, "%.1f", *Data->TireTempRL[4]);
	Unicode::snprintfFloat(textTTireRL6Buffer, TEXTTTIRERL6_SIZE, "%.1f", *Data->TireTempRL[5]);
	Unicode::snprintfFloat(textTTireRL7Buffer, TEXTTTIRERL7_SIZE, "%.1f", *Data->TireTempRL[6]);
	Unicode::snprintfFloat(textTTireRL8Buffer, TEXTTTIRERL8_SIZE, "%.1f", *Data->TireTempRL[7]);
	textTTireRL1.invalidate();
	textTTireRL2.invalidate();
	textTTireRL3.invalidate();
	textTTireRL4.invalidate();
	textTTireRL5.invalidate();
	textTTireRL6.invalidate();
	textTTireRL7.invalidate();
	textTTireRL8.invalidate();
	
	Unicode::snprintfFloat(textTTireRR1Buffer, TEXTTTIRERR1_SIZE, "%.1f", *Data->TireTempRR[0]);
	Unicode::snprintfFloat(textTTireRR2Buffer, TEXTTTIRERR2_SIZE, "%.1f", *Data->TireTempRR[1]);
	Unicode::snprintfFloat(textTTireRR3Buffer, TEXTTTIRERR3_SIZE, "%.1f", *Data->TireTempRR[2]);
	Unicode::snprintfFloat(textTTireRR4Buffer, TEXTTTIRERR4_SIZE, "%.1f", *Data->TireTempRR[3]);
	Unicode::snprintfFloat(textTTireRR5Buffer, TEXTTTIRERR5_SIZE, "%.1f", *Data->TireTempRR[4]);
	Unicode::snprintfFloat(textTTireRR6Buffer, TEXTTTIRERR6_SIZE, "%.1f", *Data->TireTempRR[5]);
	Unicode::snprintfFloat(textTTireRR7Buffer, TEXTTTIRERR7_SIZE, "%.1f", *Data->TireTempRR[6]);
	Unicode::snprintfFloat(textTTireRR8Buffer, TEXTTTIRERR8_SIZE, "%.1f", *Data->TireTempRR[7]);
	textTTireRR1.invalidate();
	textTTireRR2.invalidate();
	textTTireRR3.invalidate();
	textTTireRR4.invalidate();
	textTTireRR5.invalidate();
	textTTireRR6.invalidate();
	textTTireRR7.invalidate();
	textTTireRR8.invalidate();
}
