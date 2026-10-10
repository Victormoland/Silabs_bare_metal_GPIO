/***************************************************************************//**
 * Bare-metal playground — BRD2601 TIMER PWM.
 * Edit the block below, rebuild, flash.
 ******************************************************************************/

#include <stdio.h>

#include "em_gpio.h"
#include "pwm_gpio.h"
#include "sl_main_init.h"
#include "sl_main_process_action.h"

/* ---- config (BRD2601) ---- */
/* TIMER clock is 39 MHz. Actual f = 39e6 / floor(39e6 / F).
 * Header + default slew die around 10 MHz; we use fastest slew.
 * Do not expect a clean square much above that on EXP pads. */
#define PWM_FREQ_HZ       10000
#define PWM_DUTY_PCT      50

#define PWM_PORT          gpioPortA   /* PA7 = right pad 10, MOSFET */
#define PWM_PIN           7
#define PWM_EXP_PAD       10

#define PWM_LED_PORT      gpioPortD   /* PD2 = red LED = left pad 13 */
#define PWM_LED_PIN       2
#define PWM_LED_EXP_PAD   13
/* --------------------------- */

int main(void)
{
  sl_main_init();

  printf("\r\n");
  printf("========================================\r\n");
  printf("  Silabs_baremetal  BRD2601\r\n");
  printf("========================================\r\n");
  printf("MOSFET : P%c%d  right pad %d (between 8 and 12)\r\n",
         'A' + (int)PWM_PORT, PWM_PIN, PWM_EXP_PAD);
  printf("LED    : P%c%d  left pad %d  (RGB red, active low)\r\n",
         'A' + (int)PWM_LED_PORT, PWM_LED_PIN, PWM_LED_EXP_PAD);
  printf("GND    : left pad 1\r\n");
  printf("Freq   : %d Hz   Duty: %d percent   3.3 V\r\n",
         PWM_FREQ_HZ, PWM_DUTY_PCT);
  printf("----------------------------------------\r\n");

  pwm_start(PWM_PORT, PWM_PIN, PWM_LED_PORT, PWM_LED_PIN,
            PWM_FREQ_HZ, PWM_DUTY_PCT);

  printf("PWM running. Idle loop.\r\n");
  printf("========================================\r\n");

  while (1) {
    sl_main_process_action();
  }
}
