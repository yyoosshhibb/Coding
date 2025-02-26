/*********************************************************************************/
/********** THIS FILE IS GENERATED BY TOUCHGFX DESIGNER, DO NOT MODIFY ***********/
/*********************************************************************************/
#ifndef SCREEN6VIEWBASE_HPP
#define SCREEN6VIEWBASE_HPP

#include <gui/common/FrontendApplication.hpp>
#include <mvp/View.hpp>
#include <gui/screen6_screen/Screen6Presenter.hpp>
#include <touchgfx/widgets/Box.hpp>
#include <touchgfx/widgets/Image.hpp>
#include <touchgfx/widgets/TextAreaWithWildcard.hpp>
#include <touchgfx/widgets/TextArea.hpp>

class Screen6ViewBase : public touchgfx::View<Screen6Presenter>
{
public:
    Screen6ViewBase();
    virtual ~Screen6ViewBase();
    virtual void setupScreen();
    virtual void handleKeyEvent(uint8_t key);

protected:
    FrontendApplication& application() {
        return *static_cast<FrontendApplication*>(touchgfx::Application::getInstance());
    }

    /*
     * Member Declarations
     */
    touchgfx::Box __background;
    touchgfx::Box box1;
    touchgfx::Image image1;
    touchgfx::TextAreaWithOneWildcard textTMotor3;
    touchgfx::TextAreaWithOneWildcard textTMotor4;
    touchgfx::TextAreaWithOneWildcard textTMotor2;
    touchgfx::TextAreaWithOneWildcard textTMotor1;
    touchgfx::TextArea textLabel1;
    touchgfx::TextArea textLabel3;
    touchgfx::TextAreaWithOneWildcard textTInv1;
    touchgfx::TextAreaWithOneWildcard textTInv2;
    touchgfx::TextAreaWithOneWildcard textTInv4;
    touchgfx::TextAreaWithOneWildcard textTInv3;
    touchgfx::TextArea textLabel2;
    touchgfx::TextAreaWithOneWildcard textnMotor1;
    touchgfx::TextAreaWithOneWildcard textnMotor2;
    touchgfx::TextAreaWithOneWildcard textnMotor4;
    touchgfx::TextAreaWithOneWildcard textnMotor3;
    touchgfx::TextAreaWithOneWildcard textEInv;
    touchgfx::TextAreaWithOneWildcard textEInv4;
    touchgfx::TextAreaWithOneWildcard textEInv2;
    touchgfx::TextAreaWithOneWildcard textEInv1;
    touchgfx::TextArea textLabel3_1;

    /*
     * Wildcard Buffers
     */
    static const uint16_t TEXTTMOTOR3_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTMotor3Buffer[TEXTTMOTOR3_SIZE];
    static const uint16_t TEXTTMOTOR4_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTMotor4Buffer[TEXTTMOTOR4_SIZE];
    static const uint16_t TEXTTMOTOR2_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTMotor2Buffer[TEXTTMOTOR2_SIZE];
    static const uint16_t TEXTTMOTOR1_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTMotor1Buffer[TEXTTMOTOR1_SIZE];
    static const uint16_t TEXTTINV1_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTInv1Buffer[TEXTTINV1_SIZE];
    static const uint16_t TEXTTINV2_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTInv2Buffer[TEXTTINV2_SIZE];
    static const uint16_t TEXTTINV4_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTInv4Buffer[TEXTTINV4_SIZE];
    static const uint16_t TEXTTINV3_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textTInv3Buffer[TEXTTINV3_SIZE];
    static const uint16_t TEXTNMOTOR1_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textnMotor1Buffer[TEXTNMOTOR1_SIZE];
    static const uint16_t TEXTNMOTOR2_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textnMotor2Buffer[TEXTNMOTOR2_SIZE];
    static const uint16_t TEXTNMOTOR4_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textnMotor4Buffer[TEXTNMOTOR4_SIZE];
    static const uint16_t TEXTNMOTOR3_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textnMotor3Buffer[TEXTNMOTOR3_SIZE];
    static const uint16_t TEXTEINV_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textEInvBuffer[TEXTEINV_SIZE];
    static const uint16_t TEXTEINV4_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textEInv4Buffer[TEXTEINV4_SIZE];
    static const uint16_t TEXTEINV2_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textEInv2Buffer[TEXTEINV2_SIZE];
    static const uint16_t TEXTEINV1_SIZE = 10;
    touchgfx::Unicode::UnicodeChar textEInv1Buffer[TEXTEINV1_SIZE];

private:

};

#endif // SCREEN6VIEWBASE_HPP
