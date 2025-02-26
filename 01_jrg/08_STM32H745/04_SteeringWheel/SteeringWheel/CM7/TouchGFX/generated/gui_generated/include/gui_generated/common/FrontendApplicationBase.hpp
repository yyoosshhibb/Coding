/*********************************************************************************/
/********** THIS FILE IS GENERATED BY TOUCHGFX DESIGNER, DO NOT MODIFY ***********/
/*********************************************************************************/
#ifndef FRONTENDAPPLICATIONBASE_HPP
#define FRONTENDAPPLICATIONBASE_HPP

#include <mvp/MVPApplication.hpp>
#include <gui/model/Model.hpp>

class FrontendHeap;

class FrontendApplicationBase : public touchgfx::MVPApplication
{
public:
    FrontendApplicationBase(Model& m, FrontendHeap& heap);
    virtual ~FrontendApplicationBase() { }

    virtual void changeToStartScreen()
    {
        gotoHomeScreenNoTransition();
    }

    // Home
    void gotoHomeScreenNoTransition();

    // Screen2
    void gotoScreen2ScreenNoTransition();

    // Screen3
    void gotoScreen3ScreenNoTransition();

    // Screen4
    void gotoScreen4ScreenNoTransition();

    // Screen5
    void gotoScreen5ScreenNoTransition();

    // Screen6
    void gotoScreen6ScreenNoTransition();

    // Screen7
    void gotoScreen7ScreenNoTransition();

protected:
    touchgfx::Callback<FrontendApplicationBase> transitionCallback;
    FrontendHeap& frontendHeap;
    Model& model;

    // Home
    void gotoHomeScreenNoTransitionImpl();

    // Screen2
    void gotoScreen2ScreenNoTransitionImpl();

    // Screen3
    void gotoScreen3ScreenNoTransitionImpl();

    // Screen4
    void gotoScreen4ScreenNoTransitionImpl();

    // Screen5
    void gotoScreen5ScreenNoTransitionImpl();

    // Screen6
    void gotoScreen6ScreenNoTransitionImpl();

    // Screen7
    void gotoScreen7ScreenNoTransitionImpl();
};

#endif // FRONTENDAPPLICATIONBASE_HPP
