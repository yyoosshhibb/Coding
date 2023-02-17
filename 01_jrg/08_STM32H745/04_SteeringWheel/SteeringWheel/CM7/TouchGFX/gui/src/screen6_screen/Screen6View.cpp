#include <gui/screen6_screen/Screen6View.hpp>

Screen6View::Screen6View()
{

}

void Screen6View::setupScreen()
{
    Screen6ViewBase::setupScreen();
}

void Screen6View::tearDownScreen()
{
    Screen6ViewBase::tearDownScreen();
}

void Screen6View::nextpage(uint8_t page)
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

void Screen6View::updatevalues(PowertrainData_t *data)
{
	
}
