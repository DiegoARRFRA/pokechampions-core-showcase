<p align="right">
  <strong>Español</strong> · <a href="VALIDATION.en.md">English</a>
</p>

# Validación y evidencia

[← Portada](../README.md) · [Ficha técnica](TECHNICAL_OVERVIEW.md) · [Índice](README.md)

**Una cifra de pruebas describe una ejecución concreta, no la calidad completa del producto.** La documentación se revisó el 22/09/2026 y distingue inspección de código, pruebas host, comprobaciones físicas y material promocional.

## Referencias de validación

| Evidencia | Resultado y alcance |
| --- | --- |
| **Suite host aceptada el 20/09/2026** | **5.058 pases, 0 fallos, 0 omisiones, salida 0**. Ejecución ordinaria serial sin filtros; expediente iniciado el día 19 y aceptado a las 00:44 Europe/Madrid del día 20. |
| Reparación focal de esa campaña | 373 pases focales; trazabilidad de 79 fallos históricos. El trabajo corrigió pruebas y referencias para el comportamiento vigente; no añadió cambios de producción en ese bloque. |
| Referencia anterior del 14/09/2026 | 4.849 pases, 0 fallos y 0 omisiones, tras la corrección de importación. Se conserva como checkpoint anterior, no como cifra actual. |
| Campaña histórica de Versus | 104.091 escenarios acotados. No cubre automáticamente participantes o reglas incorporados después. |
| Campaña histórica de 1HITKO | 361 formas y 12.987 pares atacante/defensor dentro del catálogo y condiciones de aquella campaña. |
| QA física seleccionada | POCO F5/Android 15: instalación, identidad, navegación, persistencia, apariencia y actualización entre entregas externas iniciales, incluida 1.0.0+2. |

Los conjuntos **no se suman**. Los 5.058 pases no prueban que todas las modificaciones posteriores o cada APK hayan ejecutado esa suite. La campaña host no certifica audio audible, fluidez móvil, publicación en tiendas ni cobertura completa.

## Qué se revisó para esta documentación

El esquema SQLite, migración, apertura nativa, composición de repositorios, operaciones de equipos/rondas/historial, dependencias y contratos permiten describir arquitectura y persistencia. La revisión confirma lo que declara esa implementación; no equivale a ejecutar todos sus casos ni a inspeccionar una base real del usuario.

La ficha distingue **11 tablas de aplicación y una FK explícita**, referencias lógicas sin FK, JSON por entidad y lectura puntual mediante Futures. Ninguna capacidad genérica de una biblioteca se presenta automáticamente como una función implementada.

## Escala de evidencia

**Implementación inspeccionada:** muestra estructura, reglas y decisiones visibles en el código consultado. **Prueba ejecutada en un checkpoint:** demuestra aceptación dentro de ese estado y conjunto de casos. **Recorrido físico:** aporta evidencia del dispositivo y escenario probado. **Demo:** muestra una interacción seleccionada, no un benchmark ni una garantía mecánica.

Las evidencias internas completas permanecen privadas. Este repositorio publica resúmenes con límites, no una reproducción pública e independiente de todas las campañas. Las dependencias técnicas se contrastaron, pero no se ha recalculado un porcentaje global de cobertura.

## Pendientes separados

Ampliar dispositivos y accesibilidad/TalkBack; validar sesiones de audio prolongadas, foco externo, llamadas y Bluetooth; investigar ritmo de frames y causalidad de picos; medir escrituras y colecciones grandes; y validar el contenido que introduzca cada nueva regulación.

El caso histórico de rendimiento usa un emulador. **Motor → primer frame** no es **arranque Android completo**. [Método y límites](PERFORMANCE.md).

## Validación del repositorio público

Enlaces, selectores ES/EN, manifiesto y multimedia tienen un verificador propio. Es una comprobación del showcase y no ejecuta el motor privado. [Instrucciones y modos de validación](../CONTRIBUTING.md#validación-del-showcase).

Las demos actuales y la excepción de 1HITKO están identificadas en [la galería](GALLERY.md) y [su procedencia](../media/README.md). Esta actualización documental no cambia los binarios ni sus hashes.

## Conservación de fallos

Los intentos fallidos se conservan en los expedientes internos. Corregir una prueba o una implementación no reescribe el resultado original: se registra una aceptación posterior con alcance definido. La evidencia de 5.058 pases se obtuvo del resumen de reparación y su estado de proyecto; no es una ejecución realizada al editar este portfolio.
