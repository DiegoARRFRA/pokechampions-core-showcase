<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core · Material visual

[Galería](../docs/GALLERY.md) · [Portada](../README.md)

## Renovación visual · 22 de septiembre de 2026

El autor facilitó seis grabaciones nuevas. Sustituyen todas las capturas y demos anteriores **salvo el GIF, MP4 y PNG de 1HITKO**, que conservan sus bytes exactos y la procedencia del 17 de septiembre de 2026. El conjunto contiene **18 capturas y ocho demos en dos formatos (34 archivos multimedia)**: 31 archivos nuevos y tres conservados.

Las grabaciones no identifican de forma independiente la build exacta de la aplicación. Es una actualización visual, no una nueva campaña de QA ni certificación de la implementación actual. Las métricas técnicas históricas mantienen su fecha y alcance.

## Edición

Cada demo nueva es un tramo continuo a la velocidad original de la grabación, seguido de una breve pausa en el último fotograma. No se introducen cortes internos, aceleraciones ni esperas ficticias. Se recortan las barras de estado y navegación Android y se elimina el audio. El recorte y escalado conservan la proporción. No se generan ni retocan interfaces, resultados, avisos o textos.

Los MP4 nuevos usan H.264 a **720 × 1440 / 24 fps**, con metadatos de inicio rápido. Los GIF son vistas previas de **360 × 720 / 10 fps**. Las capturas nuevas son **PNG de 900 × 1800**, extraídos de fotogramas seleccionados. Los tres archivos conservados de 1HITKO mantienen sus dimensiones, duración y codificación anteriores.

## Demos

| Demo | Duración aproximada | Estado |
| --- | ---: | --- |
| [Versus](demos/versus.mp4) | 10 s | Nueva |
| [EV Lab](demos/ev-lab.mp4) | 15 s | Nueva |
| [Modo Maestro](demos/modo-maestro.mp4) | 15 s | Nueva |
| [Equipos](demos/equipos.mp4) | 11 s | Nueva |
| [Entradas](demos/entradas.mp4) | 11 s | Nueva |
| [Histórico](demos/historico.mp4) | 13 s | Nueva |
| [Idiomas](demos/idiomas.mp4) | 8 s | Nueva |
| [1HITKO](demos/1hitko.mp4) | 13 s | Conservada sin cambios |

## Temas, idioma y alcance

La mayoría del material nuevo muestra español en tema claro. La demo de idiomas cambia de español a inglés en tema oscuro; su captura muestra inglés. 1HITKO sigue en español/oscuro. La documentación es bilingüe; no se duplican ni traducen artificialmente las grabaciones.

Los resultados de práctica y recuentos del Histórico son ejemplos introducidos manualmente. No acreditan resultados reales de torneos. `lead-record.png` ahora muestra la pestaña Registro de Entradas; los archivos `history-*` pertenecen al módulo independiente HISTÓRICO. `battle-speed.png` conserva una ruta por compatibilidad, pero ahora muestra el análisis de Velocidad de Versus. Los detalles del escenario pueden variar entre capturas y demos.

## Integridad y distribución

[manifest.json](manifest.json) registra tamaños exactos, SHA-256, dimensiones, etiquetas de origen, tiempos y límites de edición. Sus entradas `retained_unchanged` fijan los tres archivos originales de 1HITKO. Documenta un conjunto de dos tandas, sin presentar todo como recién capturado.

Solo se incluyen exportaciones visuales seleccionadas: no se publican grabaciones completas, música, fuentes tipográficas, credenciales, APK, código de aplicación ni datasets privados. Siguen vigentes los [avisos de titularidad](../NOTICE.md).
