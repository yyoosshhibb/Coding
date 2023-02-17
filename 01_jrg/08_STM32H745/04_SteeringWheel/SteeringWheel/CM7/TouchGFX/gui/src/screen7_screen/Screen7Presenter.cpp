#include <gui/screen7_screen/Screen7View.hpp>
#include <gui/screen7_screen/Screen7Presenter.hpp>

Screen7Presenter::Screen7Presenter(Screen7View& v)
    : view(v)
{

}

void Screen7Presenter::activate()
{

}

void Screen7Presenter::deactivate()
{

}

void Screen7Presenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 6)
	{
		view.nextpage(msg.pageno);
	}
	view.updatevalues(&msg.Suspensiondata);
}
