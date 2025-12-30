# Moore FSM – 101 Sequence Detector

## Overview
This project implements a **Moore Finite State Machine (FSM)** to detect the binary
sequence **101** with overlapping support using Verilog.

In a Moore FSM, the output depends only on the current state, resulting in stable
and glitch-free behavior.

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
| S3 | Detected `101` (output asserted) |

## Key Characteristics
- Output asserted only in a dedicated state
- Detection occurs one clock cycle after the last input bit
- Safe and stable output behavior

## Verification
- Simulated using **Icarus Verilog**
- Verified detection and overlapping behavior using waveform analysis

## Files
- `rtl/seq_101_fsm.v` – Moore FSM RTL
- `tb/seq_101_fsm_tb.v` – Testbench

## Learning Outcome
- Moore FSM architecture
- State-based output logic
- Clean and portable RTL design
