#ifndef DRIVERVIEW_HPP
#define DRIVERVIEW_HPP

#include <gui_generated/driver_screen/DriverViewBase.hpp>
#include <gui/driver_screen/DriverPresenter.hpp>

class DriverView : public DriverViewBase
{
public:
    DriverView();
    virtual ~DriverView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // DRIVERVIEW_HPP
