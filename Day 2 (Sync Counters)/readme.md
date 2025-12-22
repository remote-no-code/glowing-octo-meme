# Up/Down Counter

## Description
This module implements a synchronous up/down counter with enable and direction
control. The counter increments or decrements based on the direction signal.

## Behavior
- rst = 1 → counter resets to 0
- en = 0 → counter holds its value
- en = 1, dir = 1 → counter counts up
- en = 1, dir = 0 → counter counts down
- Counter wraps automatically based on width

## Files
- up_down_counter.v     : RTL design
- up_down_counter_tb.v  : Testbench

