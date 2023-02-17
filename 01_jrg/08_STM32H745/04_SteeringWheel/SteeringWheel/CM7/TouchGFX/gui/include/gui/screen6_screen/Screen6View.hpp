#ifndef SCREEN6VIEW_HPP
#define SCREEN6VIEW_HPP

#include <gui_generated/screen6_screen/Screen6ViewBase.hpp>
#include <gui/screen6_screen/Screen6Presenter.hpp>

class Screen6View : public Screen6ViewBase
{
public:
    Screen6View();
    virtual ~Screen6View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
		virtual void nextpage(uint8_t page);
		virtual void updatevalues(PowertrainData_t *data);
protected:
};

#endif // SCREEN6VIEW_HPP
