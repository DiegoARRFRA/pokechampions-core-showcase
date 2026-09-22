<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# Archivos multimedia

[Galería](../docs/GALLERY.md) · [Portada](../README.md)

El inventario contiene **17 capturas PNG y siete demos en MP4 y GIF**. Las grabaciones proceden de la aplicación Android del autor. Los detalles de origen, fechas de preparación y hashes de cada archivo están en [manifest.json](manifest.json).

## Exportación

| Archivos | Vídeo MP4 | Vista previa GIF |
| --- | --- | --- |
| Versus, EV Lab, Entradas, Equipos, HISTÓRICO e Idiomas | H.264, 720 × 1440, 24 fps | 360 × 720, 10 fps, hasta 192 colores |
| 1HITKO | H.264, 540 × 1080, 24 fps | 300 × 600, 8 fps, hasta 128 colores |

Las capturas son PNG de 720 × 1440. Las demos no incluyen audio. Se retiran las barras de Android y se mantiene la proporción de la pantalla.

## Selección de tramos

| Demo | Grabación | Tramo original (s) | Pausa final (s) |
| --- | --- | ---: | ---: |
| Versus | `update-recording-02` | 14.2–24.8 | 2.0 |
| EV Lab | `update-recording-02` | 28.0–42.8 | 2.0 |
| Entradas | `update-recording-03` | 8.0–16.5 | 1.5 |
| Equipos | `update-recording-06` | 32.0–51.3 | 1.7 |
| HISTÓRICO | `update-recording-05` | 31.8–39.8 | 1.2 |
| Idiomas | `update-recording-01` | 7.1–19.1 | 1.9 |

Estos tramos se extraen de grabaciones de 1080 × 2400 mediante el recorte `[0, 110, 1080, 2160]`. Cada demo mantiene la velocidad original y añade una pausa sobre el último fotograma. El manifiesto incluye también los parámetros de 1HITKO, preparados el 17/09/2026; los demás clips se prepararon el 22/09/2026.

## Lectura de las demos

Las grabaciones muestran recorridos de uso y no se utilizan para medir rendimiento. La interfaz está en español, excepto en la demo de idiomas, que también muestra inglés y alemán.

Los resultados de Entradas y las partidas de HISTÓRICO se introducen manualmente. Las capturas pueden corresponder a distintos momentos de una sesión: en HISTÓRICO, las vistas de combates y análisis preceden al guardado mostrado en el resumen. La captura de resultados de Versus corresponde al mismo tramo que su vídeo.

Las fechas identifican la preparación del material; el número exacto de build no consta verificado para las grabaciones. Los archivos se conservan con sus metadatos y huellas originales en el manifiesto.

[Comprobación de archivos](../CONTRIBUTING.md#validación-del-showcase) · [Titularidad](../NOTICE.md)
