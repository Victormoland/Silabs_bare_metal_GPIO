#ifndef PWM_GPIO_H
#define PWM_GPIO_H

#include "em_gpio.h"
#include <stdint.h>

void pwm_start(GPIO_Port_TypeDef mosfet_port, unsigned int mosfet_pin,
               GPIO_Port_TypeDef led_port, unsigned int led_pin,
               uint32_t freq_hz, unsigned int duty_pct);

#endif
