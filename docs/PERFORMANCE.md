<p align="right">
  <strong>Español</strong> · <a href="PERFORMANCE.en.md">English</a>
</p>

# Rendimiento

[← Portada](../README.md) · [Índice de documentación](README.md)

PokeChampions Core utiliza perfilado focal en lugar de basarse únicamente en sensaciones de mayor fluidez. Este documento describe un **caso histórico de arranque en emulador**, no una medición actual de todas las builds o dispositivos.

## Caso de arranque Android

La auditoría encontró inicialización nativa de audio en la ruta crítica aunque no se necesitara reproducir música. Se modificó ese recorrido para alcanzar el primer frame útil antes de iniciar el backend nativo de audio.

Primera serie comparable en emulador; P50 representa la mediana:

| Métrica | Antes P50 | Después P50 | Cambio |
| --- | ---: | ---: | ---: |
| Android en frío, `TotalTime` | 5,118 s | 3,853 s | −24,7 % |
| Arranque caliente, `WaitTime` | 206 ms | 50 ms | −75,7 % |
| Motor → primer frame | 3,692 s | 0,395 s | −89,3 % |
| Motor → árbol útil | 3,722 s | 0,442 s | −88,1 % |
| Motor → primer raster útil | 4,251 s | 1,811 s | −57,4 % |
| Mediana de frames omitidos | 196 | 57 | −70,9 % |

## Limitación importante

Estos números **no declararon resuelto universalmente el arranque Android**. Una repetición en el mismo dispositivo virtual mostró degradación de la plataforma bajo presión de memoria y swap. El arranque extremo a extremo empeoró aunque el tramo Flutter siguió mejorando sustancialmente. Presentación de plataforma y trabajo de la aplicación son métricas distintas.

## Método y cambio acotado

Se combinaron tiempos de lanzamiento Android, marcas de logcat, timeline de Flutter, snapshots de memoria/procesos y repeticiones en frío/caliente. También se comprobó si cargas costosas de catálogos o workers aparecían inesperadamente al arrancar.

```text
Recorrido simplificado del cambio histórico:
Android → Flutter → runApp → Inicio → primer frame
                           ├─ datos / preferencias: asíncronos
                           └─ audio nativo: tras activación explícita
```

Este esquema explica aquel cambio; no sustituye al contrato de arranque de versiones posteriores, incluidas las migraciones de almacenamiento.

## Qué demuestra

El trabajo controlado por la aplicación en la ruta crítica mejoró notablemente en aquella serie. El tiempo total de presentación Android siguió siendo sensible al entorno. Se publican mejora y límite juntos; no se convierte el primer frame en una promesa de arranque completo.

[Validación y QA](VALIDATION.md) · [Arquitectura](ARCHITECTURE.md)
