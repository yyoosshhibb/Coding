#ifndef POWERTRAINVIEW_HPP
#define POWERTRAINVIEW_HPP

#include <gui_generated/powertrain_screen/PowertrainViewBase.hpp>
#include <gui/powertrain_screen/PowertrainPresenter.hpp>

class PowertrainView : public PowertrainViewBase
{
public:
    PowertrainView();
    virtual ~PowertrainView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // POWERTRAINVIEW_HPP
