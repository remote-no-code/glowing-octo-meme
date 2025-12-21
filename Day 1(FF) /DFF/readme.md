# D Flip-Flop (Verilog)

## Description
This project implements a positive-edge-triggered D flip-flop with an
asynchronous active-low reset. The flip-flop captures the input data (D)
on the rising edge of the clock when reset is inactive.

## Interface
Inputs:
- clk   : Clock (posedge triggered)
- rst_n : Asynchronous active-low reset
- d     : Data input

Outputs:
- q     : Flip-flop output

## Behavior
- rst_n = 0 → q is immediately reset to 0
- rst_n = 1 → q captures d on the rising edge of clk
- Changes in d do not affect q except at posedge clk

## Implementation
The design uses non-blocking assignments inside an always block sensitive
to posedge clk and negedge rst_n, ensuring synthesizable sequential logic.

## Simulation
The testbench generates a clock, applies reset, toggles d, and verifies
that q updates only on rising clock edges. Waveforms were observed using GTKWave.

## Files
- dff.v     : D flip-flop RTL
- dff_tb.v  : Testbench

