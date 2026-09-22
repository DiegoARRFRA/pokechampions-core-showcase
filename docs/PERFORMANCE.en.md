<p align="right">
  <a href="PERFORMANCE.md">Español</a> · <strong>English</strong>
</p>

# Performance

[← Overview](../README.en.md) · [Documentation index](README.en.md)

PokeChampions Core uses targeted profiling rather than relying only on subjective smoothness. This document describes a **historical emulator startup case**, not a current measurement of every build or device.

## Android startup case

The audit identified native audio initialisation on the critical path even when playback was unnecessary. That path was changed to reach the first useful frame before starting the native audio backend.

First comparable emulator series; P50 is the median:

| Metric | Before P50 | After P50 | Change |
| --- | ---: | ---: | ---: |
| Cold Android `TotalTime` | 5.118 s | 3.853 s | −24.7% |
| Warm `WaitTime` | 206 ms | 50 ms | −75.7% |
| Engine → first frame | 3.692 s | 0.395 s | −89.3% |
| Engine → useful tree | 3.722 s | 0.442 s | −88.1% |
| Engine → first useful raster | 4.251 s | 1.811 s | −57.4% |
| Median skipped frames | 196 | 57 | −70.9% |

## Important limitation

These numbers **did not declare Android startup universally solved**. A repeat on the same virtual device showed platform degradation under memory and swap pressure. End-to-end launch time worsened even though the Flutter portion remained substantially improved. Platform presentation and application work are distinct metrics.

## Method and scoped change

The audit combined Android launch timings, logcat timestamps, Flutter timeline markers, memory/process snapshots and repeated cold/warm runs. It also checked for expensive catalogue loading or workers unexpectedly appearing at startup.

```text
Simplified path of the historical change:
Android → Flutter → runApp → Home → first frame
                           ├─ data / preferences: asynchronous
                           └─ native audio: after explicit activation
```

This explains that change; it does not replace the startup contract of later versions, including storage migrations.

## What it demonstrates

App-controlled critical-path work improved substantially in that series. Total Android presentation remained sensitive to the environment. Improvement and limitation are published together; first-frame timing is not turned into a promise of complete startup time.

[Validation & QA](VALIDATION.en.md) · [Architecture](ARCHITECTURE.en.md)
