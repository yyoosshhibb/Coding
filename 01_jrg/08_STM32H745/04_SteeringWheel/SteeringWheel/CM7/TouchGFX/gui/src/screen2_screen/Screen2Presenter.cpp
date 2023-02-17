#include <gui/screen2_screen/Screen2View.hpp>
#include <gui/screen2_screen/Screen2Presenter.hpp>

Screen2Presenter::Screen2Presenter(Screen2View& v)
    : view(v)
{

}

void Screen2Presenter::activate()
{

}

void Screen2Presenter::deactivate()
{

}

void Screen2Presenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 1)
	{
		view.nextpage(msg.pageno);
	}
	view.updatevalues(&msg.Homedata);
}
