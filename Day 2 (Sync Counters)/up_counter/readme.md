# Synchronous Up Counter

## Description
This module implements a synchronous up counter with enable and asynchronous
active-high reset. The counter increments on each rising edge of the clock
when enable is asserted.

## Behavior
- rst = 1 → counter resets to 0
- rst = 0, en = 1 → counter increments by 1 on posedge clk
- rst = 0, en = 0 → counter holds its value
- Counter wraps naturally based on its width

## Files
- up_counter.v     : RTL design
- up_counter_tb.v  : Testbench
