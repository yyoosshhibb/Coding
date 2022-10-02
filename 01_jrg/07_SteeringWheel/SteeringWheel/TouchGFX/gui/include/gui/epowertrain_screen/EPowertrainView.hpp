#ifndef EPOWERTRAINVIEW_HPP
#define EPOWERTRAINVIEW_HPP

#include <gui_generated/epowertrain_screen/EPowertrainViewBase.hpp>
#include <gui/epowertrain_screen/EPowertrainPresenter.hpp>

class EPowertrainView : public EPowertrainViewBase
{
public:
    EPowertrainView();
    virtual ~EPowertrainView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // EPOWERTRAINVIEW_HPP
