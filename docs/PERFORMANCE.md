# Performance

PokeChampions Core has undergone targeted profiling rather than relying on subjective “feels faster” changes.

## Android startup case study

A dedicated startup audit identified native audio initialisation on the critical path even when playback was not required. The runtime path was changed so the app could reach its first useful frame before initialising the native audio backend.

In the first comparable emulator series:

| Metric | Before P50 | After P50 | Change |
|---|---:|---:|---:|
| Cold Android `TotalTime` | 5.118 s | 3.853 s | −24.7% |
| Warm `WaitTime` | 206 ms | 50 ms | −75.7% |
| Engine → first frame | 3.692 s | 0.395 s | −89.3% |
| Engine → useful tree | 3.722 s | 0.442 s | −88.1% |
| Engine → first useful raster | 4.251 s | 1.811 s | −57.4% |
| Median skipped frames | 196 | 57 | −70.9% |

## Important caveat

The project did **not** declare Android startup universally solved from those numbers.

A later sensitivity run on the same AVD showed degraded platform behavior under memory and swap pressure. End-to-end launch time worsened even though the internal Flutter portion remained substantially improved. That distinction is intentional: platform presentation time and application work are not treated as the same metric.

## Method

The private audit combined Android launch timing, logcat timestamps, Flutter timeline markers, memory/process snapshots and repeated cold/warm runs. It also checked whether expensive catalogue loading or background workers were unexpectedly present during startup.

The result was a narrower architecture:

```text
Android → Flutter → runApp → Home → first frame
                           ├─ user data / preferences: async
                           └─ native audio: deferred until explicit activation
```

## Why publish the caveat

Performance work is especially easy to overstate. This showcase therefore publishes both the improvement and the limitation: the app-controlled critical path improved dramatically, while total Android presentation remained sensitive to the test environment.
