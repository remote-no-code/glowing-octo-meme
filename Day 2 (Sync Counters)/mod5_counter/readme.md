# MOD-5 Counter

## Description
This module implements a synchronous MOD-5 up counter. The counter counts
from 0 to 4 and wraps back to 0 on the next clock cycle.

## Behavior
- rst = 1 → counter resets to 0
- rst = 0, en = 1 → counter increments
- When count reaches 4, it wraps to 0
- Counter holds its value when enable is low

## Files
- mod5_counter.v     : RTL design
- mod5_counter_tb.v  : Testbench

