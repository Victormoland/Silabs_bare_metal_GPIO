#include "pwm_gpio.h"

#include "em_cmu.h"
#include "em_device.h"
#include "em_gpio.h"
#include "em_timer.h"
#include "sl_sleeptimer.h"

#include <stdio.h>
#include <stdint.h>

#define PWM_TIMER             TIMER0
#define PWM_TIMER_ROUTE_INDEX 0

static void timer_wait_ready(void)
{
  while (((PWM_TIMER->EN & TIMER_EN_EN) != 0u)
         && ((PWM_TIMER->STATUS & TIMER_STATUS_SYNCBUSY) != 0u)) {
  }
}

static void timer_disable_module(void)
{
  timer_wait_ready();
  PWM_TIMER->EN_CLR = TIMER_EN_EN;
  while ((PWM_TIMER->EN & TIMER_EN_DISABLING) != 0u) {
  }
}

void pwm_start(GPIO_Port_TypeDef mosfet_port, unsigned int mosfet_pin,
               GPIO_Port_TypeDef led_port, unsigned int led_pin,
               uint32_t freq_hz, unsigned int duty_pct)
{
  uint32_t timer_hz;
  uint32_t period;
  uint32_t top;
  uint32_t oc;
  uint32_t cnt_a;
  uint32_t cnt_b;
  unsigned int i;

  if ((freq_hz < 1u) || (duty_pct > 100u)) {
    printf("ERROR: freq must be >= 1 and duty 0..100\r\n");
    return;
  }

  CMU_ClockEnable(cmuClock_GPIO, true);
  CMU_ClockEnable(cmuClock_TIMER0, true);
  CMU->CLKEN0_SET = CMU_CLKEN0_GPIO | CMU_CLKEN0_TIMER0;

  GPIO->ABUSALLOC = 0;
  GPIO->BBUSALLOC = 0;
  GPIO->CDBUSALLOC = 0;

  /* PC09 SENSOR_ENABLE high ties PA07 to the IMU CS. */
  GPIO_PinModeSet(gpioPortC, 9, gpioModePushPull, 0);
  GPIO_PinOutClear(gpioPortC, 9);

  GPIO_PinModeSet(mosfet_port, mosfet_pin, gpioModePushPull, 0);
  GPIO_PinModeSet(led_port, led_pin, gpioModePushPull, 0);
  /* 0 = fastest edges. Default slew (~4) rolls off around 10 MHz. Port-wide. */
  GPIO_SlewrateSet(mosfet_port, 0, 0);
  GPIO_SlewrateSet(led_port, 0, 0);

  printf("Red LED blinks 4 times, then PWM.\r\n");
  for (i = 0; i < 4u; i++) {
    GPIO_PinOutClear(led_port, led_pin);
    GPIO_PinOutSet(mosfet_port, mosfet_pin);
    sl_sleeptimer_delay_millisecond(250);
    GPIO_PinOutSet(led_port, led_pin);
    GPIO_PinOutClear(mosfet_port, mosfet_pin);
    sl_sleeptimer_delay_millisecond(250);
  }

  GPIO->TIMERROUTE[PWM_TIMER_ROUTE_INDEX].CC0ROUTE =
      ((uint32_t)mosfet_port << _GPIO_TIMER_CC0ROUTE_PORT_SHIFT)
      | ((uint32_t)mosfet_pin << _GPIO_TIMER_CC0ROUTE_PIN_SHIFT);
  GPIO->TIMERROUTE[PWM_TIMER_ROUTE_INDEX].CC1ROUTE =
      ((uint32_t)led_port << _GPIO_TIMER_CC1ROUTE_PORT_SHIFT)
      | ((uint32_t)led_pin << _GPIO_TIMER_CC1ROUTE_PIN_SHIFT);
  GPIO->TIMERROUTE[PWM_TIMER_ROUTE_INDEX].ROUTEEN =
      GPIO_TIMER_ROUTEEN_CC0PEN | GPIO_TIMER_ROUTEEN_CC1PEN;

  timer_disable_module();
  PWM_TIMER->CFG = TIMER_CFG_CLKSEL_PRESCEM01GRPACLK
                   | TIMER_CFG_DEBUGRUN_RUN
                   | (0u << _TIMER_CFG_PRESC_SHIFT);
  PWM_TIMER->CC[0].CFG = TIMER_CC_CFG_MODE_PWM | TIMER_CC_CFG_INSEL_PIN;
  PWM_TIMER->CC[1].CFG = TIMER_CC_CFG_MODE_PWM | TIMER_CC_CFG_INSEL_PIN;
  PWM_TIMER->EN_SET = TIMER_EN_EN;
  timer_wait_ready();
  PWM_TIMER->CC[1].CTRL = TIMER_CC_CTRL_OUTINV;

  timer_hz = CMU_ClockFreqGet(cmuClock_TIMER0);
  if (timer_hz == 0u) {
    printf("ERROR: TIMER0 clock is 0 Hz\r\n");
    return;
  }

  period = timer_hz / freq_hz;
  if (period < 2u) {
    period = 2u;
  }
  top = period - 1u;
  oc = (period * duty_pct) / 100u;
  if (oc > top) {
    oc = top;
  }

  PWM_TIMER->TOP = top;
  PWM_TIMER->CC[0].OC = oc;
  PWM_TIMER->CC[1].OC = oc;
  timer_wait_ready();
  PWM_TIMER->CMD = TIMER_CMD_START;
  timer_wait_ready();

  sl_sleeptimer_delay_millisecond(2);
  cnt_a = PWM_TIMER->CNT;
  sl_sleeptimer_delay_millisecond(2);
  cnt_b = PWM_TIMER->CNT;

  printf("TIMER0 clk=%lu Hz  period=%lu  TOP=%lu  OC=%lu\r\n",
         (unsigned long)timer_hz, (unsigned long)period,
         (unsigned long)top, (unsigned long)oc);
  printf("Actual PWM=%lu Hz  STATUS=0x%08lX  CNT %lu -> %lu\r\n",
         (unsigned long)(timer_hz / period),
         (unsigned long)PWM_TIMER->STATUS,
         (unsigned long)cnt_a, (unsigned long)cnt_b);
}
