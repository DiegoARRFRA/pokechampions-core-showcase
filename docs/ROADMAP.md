<p align="right"><strong>Español</strong> · <a href="ROADMAP.en.md">English</a></p>

# Estado y próximos pasos

[← Portada](../README.md) · [Funciones disponibles](FEATURES.md) · [Validación](VALIDATION.md)

Disponibilidad actualizada el **14 de noviembre de 2026**: la aplicación está publicada en [Google Play](https://play.google.com/store/apps/details?id=com.pokechampionscore.external). El alcance técnico y las comprobaciones pendientes siguientes conservan el corte del **5 de noviembre de 2026, 1.0.1**.

## Ya implementado

Batalla con carga de configuraciones y ajustes temporales; Versus, Modo Maestro y EV Lab; 1HITKO con progreso y cancelación; equipos y cobertura; catálogo de torneos con regulación histórica; notas agrupadas y habilidad conservada; Biblioteca con STATS, learnsets y filtros combinados de categoría; Entradas, Histórico, ocho idiomas, temas y audio opcional. [Detalle y límites](FEATURES.md).

Estas funciones no se presentan como trabajo futuro. Su existencia tampoco elimina las limitaciones de exactitud, datos incompletos y plataformas indicadas en la validación.

## Correcciones propuestas el 14 de noviembre

Mensaje neutral para SP desconocidos en ocho idiomas y orden de tres interpolaciones japonesas en Versus. Reproducidos y corregidos en una rama privada de revisión; no integrados ni distribuidos como nueva app. Las capturas actuales conservan la release publicada. [Evidencia y límites](SCENARIOS.md).

## Por comprobar o resolver

| Área | Siguiente comprobación concreta |
| --- | --- |
| Android físico | Recorridos de la entrega actual, persistencia/reapertura y audio prolongado con foco externo, llamadas y Bluetooth. |
| Memoria de página | Ejecutar en Android con páginas de 16 KiB; la alineación estática ya fue revisada. |
| Datos históricos | Investigar el almacén anterior incompatible conservado; la actualización de una fixture nueva no resuelve ese caso. |
| Rendimiento | Medir arranque y escrituras en la versión actual con entorno reproducible; no reutilizar el benchmark de agosto como cifra actual. |
| Distribución | Ficha pública confirmada el 14/11/2026. Comprobar en Play Console los detalles de futuras entregas y su disponibilidad por dispositivo. |
| Privacidad pública | Actualizar la referencia externa a 1.0.0; la URL ya es pública y accesible. |
| Catálogos y reglas | Validar cada nueva instantánea y resolver lagunas con evidencia de Champions, conservando procedencia y estados desconocidos. |

[Resultados por plataforma](VALIDATION.md) · [Rendimiento histórico](PERFORMANCE.md)
