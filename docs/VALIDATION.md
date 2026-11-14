<p align="right"><strong>Español</strong> · <a href="VALIDATION.en.md">English</a></p>

# Validación y QA

[← Portada](../README.md) · [Ficha técnica](TECHNICAL_OVERVIEW.md) · [Documentación](README.md)

Corte documental: **5 de noviembre de 2026**. Cada resultado pertenece a su versión, plataforma y modalidad; no se suman campañas focales a una suite global ni se extrapola HOST a Android físico. Los registros completos permanecen privados.

## Evidencia de 1.0.1 del 5 de noviembre

| Comprobación | Entorno y resultado | Límite |
| --- | --- | --- |
| Suite global final, 05/11/2026 | HOST Windows, copia de la entrega 1.0.1/46, ejecución serial sin filtro: **13.706 pases, 0 fallos, 17 omisiones, salida 0; 92 min 48 s**. | Las omisiones son capturas opcionales; el total no es un porcentaje de cobertura. |
| Análisis y localización, 05/11/2026 | Análisis estático y comprobaciones i18n sin incidencias en la preparación final. | No demuestra comportamiento en hardware físico. |
| Pruebas focales, 05/11/2026 | 21 pases iniciales y 13 finales sobre la copia de entrega. | Ejecuciones separadas; no se añaden a 13.706. |
| Actualización 1.0.0/31 → 1.0.1/46 | Emulador Android API 36, x86_64, páginas de 4 KiB, instalación de release. Conservó equipo, nota con habilidad/SP, partida y preferencias de la fixture. | Datos sintéticos en un almacén propio. No acredita todos los datos históricos. |
| Recorridos nativos de 1.0.1/46 | Mismo emulador: notas en Batalla/Versus, elección de habilidad ausente, 1HITKO, Entradas, filtros de Biblioteca y reproducción/pausa/reanudación de audio. | No es prueba física, ensayo de Bluetooth ni benchmark. |
| Compatibilidad de 16 KiB | Comprobación estática de alineación ELF y empaquetado ZIP del artefacto. | Pendiente ejecución real con páginas de 16 KiB. |

Una actualización de una fixture nueva no resuelve un almacén anterior incompatible: ese caso sigue pendiente y sus datos se conservaron. No se afirma recuperación universal ni compatibilidad con cualquier estado previo.

Las capturas HOST de la [galería](GALLERY.md) se renderizan con widgets reales y datos ficticios; validan su presentación, no la ejecución del backend Android. No se añaden sus pruebas de captura al total global anterior.

## Evidencia histórica

| Campaña | Resultado y alcance conservados |
| --- | --- |
| Suite HOST, 20/09/2026 | **5.058 pases, 0 fallos, 0 omisiones, salida 0**. Serial y sin filtros; iniciada el 19 y aceptada a las 00:44 Europe/Madrid del 20. Ya no es el total actual. |
| Reparación focal de septiembre | 373 pases focales, con trazabilidad de 79 fallos previos. No constituye otra suite global. |
| Suite HOST, 14/09/2026 | 4.849 pases, 0 fallos y 0 omisiones, tras corregir una importación. |
| Comparación histórica de Versus | 104.091 escenarios, dentro del catálogo y alcance de esa campaña. |
| Validación histórica de 1HITKO | 361 formas y 12.987 pares atacante/defensor de esa campaña. |
| QA física histórica | POCO F5, Android 15: instalación, identidad, navegación, persistencia, apariencia y actualizaciones de entregas iniciales, incluida 1.0.0+2. No acredita 1.0.1/46. |

Las últimas tres campañas ya constaban en el escaparate de septiembre. El resumen público no identifica sus fechas exactas y revisiones completas: se conservan como antecedentes, no como mediciones recientes ni garantía del catálogo actual. Los intentos fallidos y sus revalidaciones permanecen en los registros privados.

## Comprobaciones pendientes

Prueba física de la entrega actual, audio prolongado con cambios de foco/llamadas/Bluetooth, ejecución con páginas de 16 KiB y seguimiento del almacén histórico incompatible. No hay un benchmark reciente de arranque o escritura para 1.0.1; el [estudio de rendimiento](PERFORMANCE.md) es histórico y de emulador.

Play Console no se ha inspeccionado: canal efectivo, acceso de testers, códigos usados y certificado de subida registrado necesitan evidencia allí. Esto se refiere a los detalles de entrega; la ficha pública se comprobó de forma independiente el 14/11/2026, como se recoge a continuación.

## Enlaces públicos

El 05/11/2026, una petición HTTP anónima obtuvo **200** de la [política de privacidad](https://pokechampions-core-privacidad.pages.dev/) y del [perfil de contacto](https://github.com/DiegoARRFRA). La política pública todavía identifica la versión **1.0.0**: está accesible, pero su actualización editorial externa queda pendiente. El correo mostrado por la política no ha sido probado mediante envío.

En la revisión del **05/11/2026**, la consulta anónima de Google Play había devuelto HTTP **404**. Ese resultado histórico ya no describe la disponibilidad actual.

El **14/11/2026** se obtuvo la [ficha pública de Google Play](https://play.google.com/store/apps/details?id=com.pokechampionscore.external) mediante una petición sin iniciar sesión. Mostraba **POKECHAMPIONS CORE**, desarrollador **Rakull Dev**, una acción de descarga y la descripción de la primera versión pública: gratis, sin anuncios, sin compras integradas y sin registro. La portada enlaza ahora a esa ficha. Esta comprobación verifica la publicación de la ficha, no instala la app ni certifica cada dispositivo, territorio o versión posterior.

La política de privacidad también se volvió a consultar el 14/11/2026: sigue indicando versión 1.0.0. Su actualización editorial externa permanece pendiente.

## Comprobaciones del escaparate

El [verificador](../CONTRIBUTING.md#validación-del-showcase) revisa enlaces, anclas, mayúsculas, pares técnicos ES/EN, portadas y galerías en ocho idiomas, inventario, hashes y decodificación multimedia. La revisión visual y de información privada es independiente. La [documentación multimedia](../media/README.md) distingue procedencias y transformaciones. Estas comprobaciones no recompilan ni certifican la aplicación.
