/*********************************************************************************/
/********** THIS FILE IS GENERATED BY TOUCHGFX DESIGNER, DO NOT MODIFY ***********/
/*********************************************************************************/
#ifndef DRIVERVIEWBASE_HPP
#define DRIVERVIEWBASE_HPP

#include <gui/common/FrontendApplication.hpp>
#include <mvp/View.hpp>
#include <gui/driver_screen/DriverPresenter.hpp>
#include <touchgfx/widgets/Box.hpp>
#include <touchgfx/widgets/TextArea.hpp>
#include <touchgfx/containers/progress_indicators/BoxProgress.hpp>

class DriverViewBase : public touchgfx::View<DriverPresenter>
{
public:
    DriverViewBase();
    virtual ~DriverViewBase() {}
    virtual void setupScreen();

protected:
    FrontendApplication& application() {
        return *static_cast<FrontendApplication*>(touchgfx::Application::getInstance());
    }

    /*
     * Member Declarations
     */
    touchgfx::Box __background;
    touchgfx::Box box1;
    touchgfx::TextArea textAreaErrorTS;
    touchgfx::TextArea textAreaErrorElse;
    touchgfx::Box boxTempFLout;
    touchgfx::Box boxTempRL;
    touchgfx::Box boxTempRR;
    touchgfx::Box boxTempFLmid;
    touchgfx::Box boxTempFLin;
    touchgfx::BoxProgress boxProgress1;

private:

};

#endif // DRIVERVIEWBASE_HPP
