#ifndef EPOWERTRAINPRESENTER_HPP
#define EPOWERTRAINPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class EPowertrainView;

class EPowertrainPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    EPowertrainPresenter(EPowertrainView& v);

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

    virtual ~EPowertrainPresenter() {};

private:
    EPowertrainPresenter();

    EPowertrainView& view;
};

#endif // EPOWERTRAINPRESENTER_HPP
