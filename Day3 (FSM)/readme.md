# Day 3 – Finite State Machines (FSMs)

## Overview
This folder contains implementations of **Finite State Machines (FSMs)** using
Verilog, focusing on both **Moore** and **Mealy** models.

The goal of this day is to understand:
- FSM structure and coding style
- Differences between Moore and Mealy FSMs
- Latency, stability, and timing trade-offs
- Verification through simulation and waveform analysis

---

## Implemented FSMs

### 1. Moore FSM – 101 Sequence Detector
**Folder:** `moore_machine`

- Output depends only on the current state
- Uses a dedicated detect state
- Detection occurs one clock cycle after the sequence is observed
- Safer and more stable output behavior

---

### 2. Mealy FSM – 101 Sequence Detector
**Folder:** `mealy_machine`

- Output depends on current state and input
- Detection occurs in the same cycle as the final input bit
- Fewer states compared to Moore FSM
- Lower latency but requires careful timing consideration

---

## Moore vs Mealy Comparison

| Feature | Moore FSM | Mealy FSM |
|------|----------|----------|
| Output dependency | State only | State + Input |
| Detection latency | 1 clock cycle later | Same cycle |
| Number of states | More | Fewer |
| Output stability | High | Input-sensitive |
| Timing sensitivity | Lower | Higher |

---

## Verification
- All designs were verified using **Icarus Verilog**
- Waveforms were analyzed using **GTKWave**
- Overlapping sequence detection was validated for both FSM types

---

## Key Learnings
- Proper FSM coding structure (state register, next-state logic, output logic)
- Practical differences between Moore and Mealy FSMs
- Trade-offs between latency and output stability
- Importance of simulation-based verification

