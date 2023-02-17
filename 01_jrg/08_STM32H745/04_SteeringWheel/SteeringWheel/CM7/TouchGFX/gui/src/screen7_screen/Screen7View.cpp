#include <gui/screen7_screen/Screen7View.hpp>

Screen7View::Screen7View()
{

}

void Screen7View::setupScreen()
{
    Screen7ViewBase::setupScreen();
}

void Screen7View::tearDownScreen()
{
    Screen7ViewBase::tearDownScreen();
}

void Screen7View::nextpage(uint8_t page)
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

void Screen7View::updatevalues(SuspensionData_t *data)
{
	
}
