#ifndef ELECTRICSVIEW_HPP
#define ELECTRICSVIEW_HPP

#include <gui_generated/electrics_screen/ElectricsViewBase.hpp>
#include <gui/electrics_screen/ElectricsPresenter.hpp>

class ElectricsView : public ElectricsViewBase
{
public:
    ElectricsView();
    virtual ~ElectricsView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // ELECTRICSVIEW_HPP
