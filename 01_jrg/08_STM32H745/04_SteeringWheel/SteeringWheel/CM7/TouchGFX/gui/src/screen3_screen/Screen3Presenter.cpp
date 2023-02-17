#include <gui/screen3_screen/Screen3View.hpp>
#include <gui/screen3_screen/Screen3Presenter.hpp>

Screen3Presenter::Screen3Presenter(Screen3View& v)
    : view(v)
{

}

void Screen3Presenter::activate()
{

}

void Screen3Presenter::deactivate()
{

}

void Screen3Presenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 2)
	{
		view.nextpage(msg.pageno);
	}
	view.updatevalues(&msg.Batterydata);
}
