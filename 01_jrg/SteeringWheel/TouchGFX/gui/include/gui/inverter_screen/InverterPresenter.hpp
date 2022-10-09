#ifndef INVERTERPRESENTER_HPP
#define INVERTERPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class InverterView;

class InverterPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    InverterPresenter(InverterView& v);

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

    virtual ~InverterPresenter() {};

private:
    InverterPresenter();

    InverterView& view;
};

#endif // INVERTERPRESENTER_HPP
