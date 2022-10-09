#ifndef DRIVERPRESENTER_HPP
#define DRIVERPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class DriverView;

class DriverPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    DriverPresenter(DriverView& v);

    /**
     * The activate function is called automatically when this screen is "switched in"
     * (ie. made active). Initialization logic can be placed here.
     */
    virtual void activate();

    /**
     * The deactivate function is called automatically when this screen is "switched out"
     * (ie. made inactive). Teardown functionality can be placed here.
     */
    virtual void deactivate();

    virtual ~DriverPresenter() {};

private:
    DriverPresenter();

    DriverView& view;
};

#endif // DRIVERPRESENTER_HPP
