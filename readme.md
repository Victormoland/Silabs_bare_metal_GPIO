# Silabs bare-metal PWM (BRD2601)

TIMER PWM on the Silicon Labs xG24 Dev Kit. Frequency and duty cycle are set in `main.c`. The same waveform drives a MOSFET gate (PA7) and the onboard red LED (PD2).

## Pins

| Function | Pin | Board |
|----------|-----|--------|
| MOSFET (3.3 V push-pull) | PA7 | Right pad 10 |
| Red LED (active-low) | PD2 | Left pad 13 |
| Ground | | Left pad 1 |

Do not use pads 4 / 6 / 8 (onboard flash).

## Config

Edit the defines at the top of `main.c`, then rebuild. TIMER and GPIO setup is in `pwm_gpio.c`.

## Build

Simplicity Studio 6 / Simplicity SDK 2025.12.1. From `cmake_gcc`:

```text
cmake --build --preset default_config
```

Flash `cmake_gcc/build/base/i2cspm_baremetal.hex`. UART is 115200 8N1 on the J-Link VCOM port.
