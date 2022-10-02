#ifndef INVERTERVIEW_HPP
#define INVERTERVIEW_HPP

#include <gui_generated/inverter_screen/InverterViewBase.hpp>
#include <gui/inverter_screen/InverterPresenter.hpp>

class InverterView : public InverterViewBase
{
public:
    InverterView();
    virtual ~InverterView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // INVERTERVIEW_HPP
