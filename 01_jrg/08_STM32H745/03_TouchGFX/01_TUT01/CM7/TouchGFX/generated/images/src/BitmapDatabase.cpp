// 4.20.0 0x029a523a
// Generated by imageconverter. Please, do not edit!

#include <BitmapDatabase.hpp>
#include <touchgfx/Bitmap.hpp>

extern const unsigned char image_blue_togglebars_toggle_round_large_button_off[]; // BITMAP_BLUE_TOGGLEBARS_TOGGLE_ROUND_LARGE_BUTTON_OFF_ID = 0, Size: 128x38 pixels
extern const unsigned char image_blue_togglebars_toggle_round_large_button_on[]; // BITMAP_BLUE_TOGGLEBARS_TOGGLE_ROUND_LARGE_BUTTON_ON_ID = 1, Size: 128x38 pixels
extern const unsigned char image_dark_backgrounds_main_bg_texture_480x272px[]; // BITMAP_DARK_BACKGROUNDS_MAIN_BG_TEXTURE_480X272PX_ID = 2, Size: 480x272 pixels

const touchgfx::Bitmap::BitmapData bitmap_database[] = {
    { image_blue_togglebars_toggle_round_large_button_off, 0, 128, 38, 13, 1, 102, ((uint8_t)touchgfx::Bitmap::ARGB8888) >> 3, 36, ((uint8_t)touchgfx::Bitmap::ARGB8888) & 0x7 },
    { image_blue_togglebars_toggle_round_large_button_on, 0, 128, 38, 13, 1, 102, ((uint8_t)touchgfx::Bitmap::ARGB8888) >> 3, 36, ((uint8_t)touchgfx::Bitmap::ARGB8888) & 0x7 },
    { image_dark_backgrounds_main_bg_texture_480x272px, 0, 480, 272, 0, 0, 480, ((uint8_t)touchgfx::Bitmap::RGB565) >> 3, 272, ((uint8_t)touchgfx::Bitmap::RGB565) & 0x7 }
};

namespace BitmapDatabase
{
const touchgfx::Bitmap::BitmapData* getInstance()
{
    return bitmap_database;
}

uint16_t getInstanceSize()
{
    return (uint16_t)(sizeof(bitmap_database) / sizeof(touchgfx::Bitmap::BitmapData));
}
} // namespace BitmapDatabase
