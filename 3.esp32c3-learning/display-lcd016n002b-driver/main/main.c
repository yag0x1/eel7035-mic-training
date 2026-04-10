#include "lcd016n002b.h"

lcd_pin_config_t lcd_pins= {
    .pin_d0 = 0,
    .pin_d1 = 1,
    .pin_d2 = 2,
    .pin_d3 = 3,
    .pin_d4 = 4,
    .pin_d5 = 5,
    .pin_d6 = 6,
    .pin_d7 = 7,
    .pin_rs = 8,
    .pin_e = 9
};

void app_main(void)
{
    lcd_config_pins(&lcd_pins);
}
