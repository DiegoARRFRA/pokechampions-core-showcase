<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core · Material visual

[Galería](../docs/GALLERY.md) · [Portada](../README.md)

## Actualización del 22 de septiembre de 2026

Seis grabaciones suministradas por el autor como una versión más reciente de la aplicación. Se preparan **seis demos nuevas y 16 capturas nuevas**; no se ha identificado de forma independiente el número exacto de build. La interfaz nueva es principalmente española y clara. El recorrido de idiomas muestra español, inglés y alemán en tema oscuro.

| Demo | Grabación | Tramo original (s) | Pausa final (s) |
| --- | --- | ---: | ---: |
| Versus · movimiento y resultado | `update-recording-02` | 14.2–24.8 | 2.0 |
| EV Lab · supervivencia | `update-recording-02` | 28.0–42.8 | 2.0 |
| Entradas · elección y resultado manual | `update-recording-03` | 8.0–16.5 | 1.5 |
| Equipos · build recomendada y estadísticas | `update-recording-06` | 32.0–51.3 | 1.7 |
| HISTÓRICO · guardar partida y consultar rival | `update-recording-05` | 31.8–39.8 | 1.2 |
| Idiomas · español, inglés y alemán | `update-recording-01` | 7.1–19.1 | 1.9 |

## Transformaciones

Recorte común `[0, 110, 1080, 2160]` sobre las grabaciones de 1080 × 2400: se retiran las barras de estado y navegación, no se cambia el contenido. Exportación MP4 H.264, 720 × 1440, 24 fps, sin audio; GIF, 360 × 720, 10 fps y paleta de hasta 192 colores; PNG, 720 × 1440. Las conversiones de frecuencia de imagen no aceleran la grabación. La cuantización GIF y la compresión de vídeo afectan a la codificación, no a la información mostrada.

Cada demo es un tramo continuo con una pausa sobre el último fotograma. No hay cortes internos, interpolación generativa, interfaces inventadas ni retoques de valores o avisos. Los tiempos y hashes exactos de cada exportación figuran en [manifest.json](manifest.json).

## Material anterior y sustituciones

Se sustituyen las demos `versus` y `entradas`, y seis capturas con rutas existentes. `lead-record.png` ahora sí muestra el registro de Entradas; antes mostraba su preparación. El registro de Entradas se mantiene separado del HISTÓRICO de partidas.

Se conservan sin modificar `1hitko.gif`, `1hitko.mp4` y `1hitko-results.png`, del paquete anterior del 17 de septiembre. Están marcados como `previous-2026-09-17` y no se presentan como capturas de la última versión. Total del manifiesto: **31 archivos**, de los cuales **28 son nuevos o sustituidos y tres son anteriores**.

## Límites

Material de presentación, no una nueva ejecución de pruebas ni un benchmark. Los números de HISTÓRICO y Entradas son ejemplos guardados manualmente; diferentes capturas pueden mostrar momentos distintos de la sesión. La nueva captura de Versus procede del mismo tramo que su demo; EV Lab y Modo Maestro conservan su propio contexto. No se publican grabaciones completas, música, fuentes tipográficas, código privado, datos internos ni credenciales.

[Titularidad y proyecto fan no oficial](../NOTICE.md).
