<p align="right"><strong>Español</strong> · <a href="README.en.md">English</a></p>

# Archivos multimedia

[Galería](../docs/GALLERY.md) · [Casos reproducibles](../docs/SCENARIOS.md) · [Portada](../README.md)

Inventario del **14/11/2026**: **64 capturas actuales WebP** (ocho por idioma), **ocho capturas PNG históricas**, logo transparente, siete miniaturas PNG y siete vídeos MP4 históricos. Los **87 archivos** están identificados por tamaño, dimensiones, SHA-256 y procedencia en [manifest.json](manifest.json). No se publican instaladores, audios, fuentes, datos de uso ni originales privados.

## Capturas actuales

| Grupo | Procedencia | Tratamiento |
| --- | --- | --- |
| Inicio, Biblioteca y torneos: 24 imágenes | Release Android **1.0.1/46**, API 36 x86_64, emulador aislado. Originales 1080×2674, densidad 440. | Solo barras del sistema: recorte 1080×2475 en x0/y136; reducción proporcional Lanczos a 786 px de ancho; WebP sin pérdida. |
| Versus, Batalla, 1HITKO, cobertura y notas: 40 imágenes | Widgets reales en Windows, motor y catálogos de la revisión publicada; datos sintéticos aislados. Vista 393×900 lógica, PNG 786×1800, escala de texto 1. | WebP sin pérdida, conservando dimensiones y píxeles originales. |
| Logo | Recurso transparente de la aplicación, conservado de la entrega anterior. | PNG 256 px, canal alfa intacto; no usa el fondo blanco del lanzador. |

Idiomas: es, en, fr, de, it, **pt-PT**, ja y ko. Tema principal oscuro. Revisión de app: `76e783aa1876e812bc971e5eafeeffd2aa38821f`. Ninguna captura actual incorpora parches de producción. Cada pie identifica Android o HOST. HOST no es una captura de móvil físico. Los renders CJK se repitieron con la fuente del emulador para evitar una limitación de la reserva Windows; esa fuente no se distribuye aquí.

FFmpeg comprobó que los píxeles RGBA decodificados de **cada uno de los 64 WebP** coinciden con su referencia PNG. En Android la referencia es el recorte reducido; en HOST es el original completo. No se reconstruyen interfaces, traducen píxeles ni retocan resultados. La compresión sin pérdida se aplica después de las transformaciones geométricas declaradas.

## Peso y conservación

| Alcance medido | Bytes |
| --- | ---: |
| Originales elegidos de las 64 capturas | 16.351.161 |
| Copias públicas de las 64 capturas | 7.181.262 |
| Ahorro de las copias frente a sus originales | **9.169.899 (56,1%)** |
| Árbol anterior: 23 recursos | 11.801.898 |
| Árbol actual: 87 recursos | **18.983.160** |

El árbol crece 7,18 MB al añadir ocho galerías localizadas y conservar todo el material previo. Esto es distinto del ahorro por compresión y del tamaño histórico del clon Git. Un ensayo de reducción PNG aumentó el peso; se conservó en privado y se eligió WebP tras comprobar sus píxeles y ahorro real.

## Material histórico

Los ocho PNG de la galería del **05/11/2026** permanecen en sus rutas originales, con el rol `historical-screenshot`; las páginas actuales utilizan exclusivamente las nuevas carpetas de idioma.

Los siete MP4 y siete miniaturas se conservan **byte a byte**. Seis demos proceden de grabaciones Android del autor preparadas el 22/09/2026; 1HITKO conserva su exportación del 17/09. La compilación exacta no está acreditada. Son antecedentes, no novedades de 1.0.1. Los MP4 son H.264 sin audio: seis a 720×1440 y uno a 540×1080, 24 fps; miniaturas 180×360. Parámetros de segmentos y pausas conservados en el manifiesto. No hay GIF en las portadas ni reproducción automática.

[Cómo validar](../CONTRIBUTING.md#validación-del-showcase) · [Avisos y derechos](../NOTICE.md)
