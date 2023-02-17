#include <gui/screen6_screen/Screen6View.hpp>
#include <gui/screen6_screen/Screen6Presenter.hpp>

Screen6Presenter::Screen6Presenter(Screen6View& v)
    : view(v)
{

}

void Screen6Presenter::activate()
{

}

void Screen6Presenter::deactivate()
{

}

void Screen6Presenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 5)
	{
		view.nextpage(msg.pageno);
	}
	view.updatevalues(&msg.Powertraindata);
}