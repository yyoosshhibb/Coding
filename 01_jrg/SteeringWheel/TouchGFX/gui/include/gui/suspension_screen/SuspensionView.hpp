#ifndef SUSPENSIONVIEW_HPP
#define SUSPENSIONVIEW_HPP

#include <gui_generated/suspension_screen/SuspensionViewBase.hpp>
#include <gui/suspension_screen/SuspensionPresenter.hpp>

class SuspensionView : public SuspensionViewBase
{
public:
    SuspensionView();
    virtual ~SuspensionView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // SUSPENSIONVIEW_HPP
