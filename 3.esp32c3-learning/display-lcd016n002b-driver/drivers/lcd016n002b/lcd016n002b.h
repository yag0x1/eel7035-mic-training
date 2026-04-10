#ifndef LCD016N002B_H
#define LCD016N002B_H

#include <stdint.h>

typedef struct 
{
    uint8_t pin_d0;
    uint8_t pin_d1;
    uint8_t pin_d2;
    uint8_t pin_d3;
    uint8_t pin_d4;
    uint8_t pin_d5;
    uint8_t pin_d6;
    uint8_t pin_d7;
    uint8_t pin_rs;
    uint8_t pin_e; 

} lcd_pin_config_t;

void lcd_config_pins(lcd_pin_config_t *pin_config);

#endif
