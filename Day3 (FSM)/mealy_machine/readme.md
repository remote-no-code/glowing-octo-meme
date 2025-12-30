# Mealy FSM – 101 Sequence Detector

## Overview
This project implements a **Mealy Finite State Machine (FSM)** to detect the binary
sequence **101** with overlapping support using Verilog.

In a Mealy FSM, outputs depend on both the current state and inputs, enabling
faster detection.

## FSM Description
- Input  : `din`
- Output : `detect`
- Clock  : Positive edge triggered
- Reset  : Asynchronous active-high
- Sequence detected: **101**
- Overlapping detection: **Yes**

## States
| State | Meaning |
|------|--------|
| S0 | Initial / no match |
| S1 | Detected `1` |
| S2 | Detected `10` |

## Key Characteristics
- Output asserted during state transition
- Detection occurs in the same cycle as the final input bit
- Fewer states than Moore FSM
- Lower latency with careful timing considerations

## Verification
- Simulated using **Icarus Verilog**
- Verified immediate detection and overlapping behavior

## Files
- `seq_101_mealy_fsm.v` – Mealy FSM RTL
- `seq_101_mealy_fsm_tb.v` – Testbench

## Learning Outcome
- Mealy FSM design methodology
- Understanding latency vs stability trade-offs

