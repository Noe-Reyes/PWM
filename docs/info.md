<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

My project involves Pulse Width Modulation (PWM), allowing the duty cycle to be adjusted between 10% and 80% using 3 switches with 7 different combinations. Each combination increments the duty cycle by 10%. For example, '000' represents a 10% duty cycle, and '111' represents an 80% duty cycle. The PWM was designed for a frequency of 1KHz.

![PWM](https://github.com/Noe-Reyes/PWM/assets/165437989/25771c3a-0918-4a82-9fd9-5e00af549505)

The above image represents the PWM module that was designed.

| [2:0] LOAD | Porcentaje |
|------------|------------|
| 000        | 10%        |
| 001        | 20%        |
| 010        | 30%        |
| 011        | 40%        |
| 100        | 50%        |
| 101        | 60%        |
| 110        | 70%        |
| 111        | 80%        |
## How to test

First, the reset should be activated and desactivated, and second, you can choose the combination of switches to observe the change in LED intensity.

## External hardware
The external hardware includes one LED, a 1k ohm resistor, and three 2-position switches.
