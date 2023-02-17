#include <gui/screen4_screen/Screen4View.hpp>
#include <gui/screen4_screen/Screen4Presenter.hpp>

Screen4Presenter::Screen4Presenter(Screen4View& v)
    : view(v)
{

}

void Screen4Presenter::activate()
{

}

void Screen4Presenter::deactivate()
{

}

void Screen4Presenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 3)
	{
		view.nextpage(msg.pageno);
	}
	view.updatevalues(&msg.Electricsdata);
}
