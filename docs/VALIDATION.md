<p align="right">
  <strong>Español</strong> · <a href="VALIDATION.en.md">English</a>
</p>

# Validación y QA

[← Portada](../README.md) · [Ficha técnica](TECHNICAL_OVERVIEW.md) · [Documentación](README.md)

La validación combina pruebas en host, comparación de escenarios del motor y recorridos físicos en Android. Cada campaña registra su entorno, resultado y alcance.

## Resultados de pruebas

| Campaña | Resultado y alcance |
| --- | --- |
| **Suite host — 20/09/2026** | **5.058 pases, 0 fallos, 0 omisiones, salida 0**. Ejecución ordinaria, serial y sin filtros. Iniciada el día 19 y aceptada a las 00:44 Europe/Madrid del día 20. |
| Reparación focal de la suite | 373 pases focales y trazabilidad de los 79 fallos detectados. Se ajustaron pruebas y referencias al comportamiento de la aplicación, sin modificar producción en ese trabajo. |
| Suite host — 14/09/2026 | 4.849 pases, 0 fallos y 0 omisiones, tras la corrección de importación. |
| Comparación de Versus | 104.091 escenarios dentro del alcance de la campaña. |
| Validación de 1HITKO | 361 formas y 12.987 pares atacante/defensor, con el catálogo y las condiciones de la campaña. |
| QA física | POCO F5 con Android 15: instalación, identidad, navegación, persistencia, apariencia y actualización entre entregas externas iniciales, incluida 1.0.0+2. |

Los resultados pertenecen a las ejecuciones indicadas y no se suman como una única suite. Los cambios posteriores de código, catálogo o configuración requieren sus propias pruebas. La aceptación en host no sustituye las comprobaciones físicas de audio, rendimiento o accesibilidad.

## Alcance de las comprobaciones

| Comprobación | Qué aporta |
| --- | --- |
| Pruebas de lógica e interfaz | Aceptación de los casos ejecutados para una versión concreta. |
| Campañas de comparación | Contraste de resultados del motor bajo escenarios definidos. |
| Revisión de implementación | Comprobación de contratos, esquema, repositorios y flujos descritos en la documentación. |
| Recorridos físicos | Verificación del comportamiento en el dispositivo y las condiciones de la prueba. |
| Demos | Ejemplos de uso de la interfaz; no son mediciones de rendimiento ni pruebas del motor. |

Los expedientes completos se conservan en el repositorio privado. Esta página resume sus resultados; no publica el corpus de pruebas ni un porcentaje global de cobertura.

## Pruebas por completar

Ampliar la matriz de dispositivos y los recorridos con TalkBack. Completar sesiones de audio prolongadas y pruebas con foco externo, llamadas y Bluetooth. Medir escrituras y comportamiento con colecciones grandes, investigar los tiempos de presentación de frames y validar las incorporaciones de cada regulación.

El [estudio de arranque](PERFORMANCE.md) detalla mediciones en emulador y distingue el tiempo hasta el primer frame del arranque completo de Android.

## Registro de resultados

Los expedientes conservan los intentos fallidos y las ejecuciones de aceptación posteriores. Cada corrección mantiene su trazabilidad por caso, entorno y resultado. La cifra de 5.058 pases corresponde a la campaña de reparación de la suite aceptada el 20/09/2026.

## Comprobaciones del repositorio

El verificador del repositorio comprueba enlaces, selectores ES/EN, inventario multimedia, tamaños y hashes. Sus modos completos también validan los formatos y la decodificación de los archivos. [Instrucciones de ejecución](../CONTRIBUTING.md#validación-del-showcase).

Los parámetros de edición y las fechas de preparación de las grabaciones están en [Archivos multimedia](../media/README.md). Estas comprobaciones son independientes de las pruebas de la aplicación.
