#include <gui/home_screen/HomeView.hpp>
#include <gui/home_screen/HomePresenter.hpp>

HomePresenter::HomePresenter(HomeView& v)
    : view(v)
{

}

void HomePresenter::activate()
{

}

void HomePresenter::deactivate()
{

}

void HomePresenter::updateData(GUIMessage_t msg)
{
	if(msg.pageno != 0)
	{
		view.nextpage(msg.pageno);
	}
}

