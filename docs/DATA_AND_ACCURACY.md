<p align="right">
  <strong>Español</strong> · <a href="DATA_AND_ACCURACY.en.md">English</a>
</p>

# Datos y exactitud

[← Portada](../README.md) · [Índice de documentación](README.md)

PokeChampions Core separa la **procedencia de los datos** de la **autoridad sobre el comportamiento en ejecución**. Ninguna fuente se considera correcta para cualquier tipo de pregunta.

## Modelo de autoridad

El proceso de datos distingue entre información oficial de Pokémon Champions para regulación, disponibilidad legal y reglas publicadas; referencias técnicas fijadas para datos base, identificadores, movimientos aprendibles y comportamiento reproducible; excepciones específicas de Champions frente a reglas genéricas; y excepciones declarativas del proyecto solo cuando están justificadas de forma independiente y no pueden derivarse con seguridad de otra fuente.

Las descripciones para lectura humana son documentación: nunca gobiernan por sí solas una mecánica.

## Catálogos offline

Los datos se empaquetan con la aplicación. Investigación, importación y generación se realizan durante el desarrollo, no en cada ejecución. Cada entrega conserva un snapshot estable: una web o repositorio externo mutable no cambia silenciosamente una build ya instalada.

## Revisiones e integridad

Las herramientas internas registran revisiones inmutables y hashes cuando resulta práctico. Así pueden compararse los artefactos generados con las entradas exactas de las que proceden. Las huellas comprueban integridad y trazabilidad; no prueban por sí mismas que una regla sea correcta.

## Conflictos e incertidumbre

Una regla oficial específica de Champions prevalece sobre una interpretación genérica. Una excepción técnica propia de Champions prevalece sobre una regla general cuando esa excepción es aplicable.

Si la evidencia no basta, se muestra contexto insuficiente, se documenta una interacción no soportada o se adopta una excepción acotada y respaldada por evidencia. No se completan huecos solo porque otro formato de Pokémon se comporte de forma parecida.

## Cambios de regulación

Una nueva regulación es un cambio de datos que requiere aceptación propia. Los participantes, mecánicas o entradas incorporados después no heredan automáticamente campañas históricas de validación.

Una campaña anterior correcta no es una prueba de un estado que todavía no existía cuando se ejecutó.

[Funcionamiento de los datos](TECHNICAL_OVERVIEW.md) · [Validación](VALIDATION.md)

## Instantánea revisada para 1.0.1

El catálogo de torneos empaquetado del 4 de noviembre de 2026 contiene **730 equipos de 19 torneos**, contrastados con la entrega 1.0.1/46. Se seleccionan puestos 1–32 por evento y categoría oficial, conservando los puestos de origen y admitiendo rangos solo cuando su extremo superior no supera 32. La regulación corresponde al evento histórico; lo no confirmado permanece desconocido.

Smogon Strategies aporta referencias de builds con procedencia; las fuentes de torneos pueden publicar solo especies o repartos incompletos. Esas entradas no acreditan objeto, habilidad ni SP ausentes. Las notas conservan los SP desconocidos y avisan antes de usar ceros editables. Las instantáneas se actualizan durante el desarrollo, sin sincronización de red al ejecutar la app. [Detalle de uso](FEATURES.md).
