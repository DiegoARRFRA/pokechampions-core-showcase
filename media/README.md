<p align="right"><strong>Español</strong> · <a href="README.en.md">English</a></p>

# Archivos multimedia

[Galería](../docs/GALLERY.md) · [Portada](../README.md)

Inventario del **05/11/2026**: **8 capturas PNG actuales, 1 logo PNG transparente, 7 miniaturas PNG y 7 vídeos MP4 históricos**. Los 23 archivos y sus tamaños, dimensiones, SHA-256 y procedencia están en [manifest.json](manifest.json). No se incluyen audios, instaladores ni grabaciones originales privadas.

## Capturas actuales

| Archivos | Procedencia | Tratamiento |
| --- | --- | --- |
| Inicio, Versus, 1HITKO, torneos, Biblioteca | Release 1.0.1/46, emulador Android API 36 x86_64; 05/11/2026. | Original 1080 × 2400; recorte x=0, y=136, ancho=1080, alto=2201, retirando solo barras del sistema. Reducción a 720 × 1467. |
| Batalla y notas | Widgets reales Flutter, HOST Windows, copia de código de 1.0.1/46; 05/11/2026. | Vista lógica 393 × 850, renderizado a densidad 2 (786 × 1700); reducción a 720 × 1557. |
| Cobertura | Widgets reales Flutter, HOST Windows, misma copia y fecha. | Vista lógica 390 × 844, renderizado a densidad 2 (780 × 1688); reducción a 720 × 1558. |
| Logo | Recurso transparente usado dentro de la aplicación actual. | Reducción proporcional a 256 px de ancho; canal alfa conservado. No se utiliza el fondo del lanzador Android. |

Los ejemplos son ficticios. Los renders HOST usan componentes y fuentes reales de la aplicación; no son reconstrucciones de pantalla ni capturas de Android físico. Se conserva el aspecto completo de las vistas seleccionadas, incluido el desplazamiento de 1HITKO tras terminar la búsqueda. La revisión no retoca textos, colores ni resultados.

Transformaciones deterministas con FFmpeg: recorte, reducción Lanczos y compresión PNG sin pérdidas adicionales. No se amplía ninguna imagen. Los hashes de origen permiten contrastar la procedencia en el archivo privado de evidencias sin publicar sus rutas.

## Vídeos históricos

Los siete MP4 se conservan **byte a byte** de la versión anterior del escaparate. Versus, EV Lab, Entradas, equipos, Histórico e idiomas se prepararon el **22/09/2026**, a partir de grabaciones Android aportadas por el autor; 1HITKO procede del **17/09/2026**. No se conoce su compilación exacta. No prueban novedades de 1.0.1.

| Grupo | Formato conservado | Miniatura nueva |
| --- | --- | --- |
| Seis demos del 22/09 | H.264, 720 × 1440, 24 fps, sin audio | PNG de 180 × 360, fotograma a los 4 s |
| 1HITKO del 17/09 | H.264, 540 × 1080, 24 fps, sin audio | PNG de 180 × 360, fotograma a los 4 s |

Se mantienen velocidad de grabación, segmentos y pausa final de las exportaciones históricas. Los parámetros originales de cada clip se conservan en el manifiesto; las miniaturas enlazan al MP4 sin reproducción automática. No se distribuyen canciones completas.

## Peso y conservación

| Inventario binario de media | Bytes | MB decimales |
| --- | ---: | ---: |
| Anterior: 17 PNG + 7 GIF + 7 MP4 | 37.916.500 | 37,92 |
| Actual: 16 PNG + 7 MP4 | 11.801.898 | 11,80 |
| Reducción | 26.114.602 | **68,9 %** |

Se retiran del árbol actual los GIF duplicados y las capturas anteriores sustituidas. **No se reescribe el historial Git**: esos archivos siguen en las revisiones previas, por lo que la reducción del árbol no equivale al ahorro del clon histórico. Los siete MP4 retienen sus SHA-256 anteriores.

[Cómo validar](../CONTRIBUTING.md#validación-del-showcase) · [Avisos y derechos](../NOTICE.md)
