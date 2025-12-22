# Synchronous Down Counter

## Description
This module implements a synchronous down counter with enable and asynchronous
active-high reset. The counter decrements on each rising edge of the clock.

## Behavior
- rst = 1 → counter loads maximum value
- rst = 0, en = 1 → counter decrements by 1 on posedge clk
- When count reaches 0, it wraps to the maximum value
- Counter holds its value when enable is low

## Files
- sync_down_counter.v     : RTL design
- sync_down_counter_tb.v  : Testbench

