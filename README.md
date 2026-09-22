<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core

Aplicación Android para crear equipos, calcular daño y preparar enfrentamientos de Pokémon Champions. Funciona sin conexión y guarda equipos, notas y partidas en el dispositivo.

Desarrollada por **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter y Dart · Código fuente privado.

[Ficha técnica](docs/TECHNICAL_OVERVIEW.md) · [Base de datos](docs/DATABASE.md) · [Arquitectura](docs/ARCHITECTURE.md) · [Galería](docs/GALLERY.md) · [Documentación](docs/README.md)

## Tecnologías y arquitectura

| Área | Implementación |
| --- | --- |
| **Interfaz** | Flutter y Dart; componentes reutilizables, ocho idiomas y temas claro, oscuro y del sistema. |
| **Arquitectura** | Organización por funcionalidades y capas, contratos tipados e inyección por constructor. Puertos y adaptadores en cálculo, audio y persistencia. |
| **Análisis** | Reglas de dominio y catálogos locales para evaluar daño, KO y supervivencia según el escenario configurado. |
| **Persistencia** | Drift y SQLite: 11 tablas, columnas indexadas y documentos JSON para equipos, notas, historial y rivales. |
| **Concurrencia** | Almacenamiento en un isolate de Drift, cola FIFO de operaciones y búsqueda de 1HITKO con progreso y cancelación. |
| **Integridad** | Guardados transaccionales, control de revisiones de borradores y migraciones con conservación y verificación de datos. |
| **Desarrollo** | Pruebas Dart/Flutter, análisis estático, generación de datos y perfilado en Android. |

El cálculo consulta reglas y catálogos empaquetados. El guardado utiliza repositorios locales y SQLite; no requiere cuentas ni servicios externos.

## La aplicación

Inicio, análisis de daño y editor de equipos. Pulsa una captura para ampliarla.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Inicio de PokeChampions Core en tema claro"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: rango de daño y usos necesarios para lograr un KO"></a>
  <a href="media/screenshots/team-builder.png"><img src="media/screenshots/team-builder.png" width="220" alt="Editor de equipos con integrantes, habilidades, objetos y naturalezas"></a>
</p>

### Calculadora Versus

Configura los combatientes, elige un movimiento y consulta su rango de daño y las condiciones de KO.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Selección de movimiento y cálculo de daño en Versus"></a>

**[Ver vídeo](media/demos/versus.mp4)** · [Equipos y builds](docs/GALLERY.md#equipos-y-builds) · [Entradas](docs/GALLERY.md#entradas) · [HISTÓRICO](docs/GALLERY.md#histórico) · [Todas las demos](docs/GALLERY.md)

## Decisiones de diseño

| Necesidad | Solución | Detalle |
| --- | --- | --- |
| Conservar equipos y partidas al migrar el almacenamiento | Preparación de la base de datos, verificación y activación; recuperación de los originales ante errores. | [Migraciones](docs/DATABASE.md#migración-e-integridad) |
| Evitar registros duplicados y guardados parciales | Finalización del borrador en una transacción, con identidad y revisión esperada. | [Guardado de partidas](docs/TECHNICAL_OVERVIEW.md#guardar-una-partida) |
| Mantener coherentes los cálculos entre herramientas | Reglas compartidas, peticiones tipadas y separación entre evaluación y presentación. | [Arquitectura](docs/ARCHITECTURE.md) |
| Gestionar búsquedas y operaciones de almacenamiento | Isolates, cancelación y control del ciclo de vida de los trabajos. | [Concurrencia](docs/TECHNICAL_OVERVIEW.md#concurrencia-y-estado) |

## Pruebas y rendimiento

**5.058 pruebas aprobadas, sin fallos ni omisiones**, en la suite host del **20/09/2026**. La documentación de calidad recoge los resultados, los escenarios de comparación del motor y las comprobaciones en POCO F5 con Android 15.

[Resultados y alcance de las pruebas](docs/VALIDATION.md) · [Estudio de arranque en emulador](docs/PERFORMANCE.md)

## Documentación técnica

| Documento | Contenido |
| --- | --- |
| [Ficha técnica](docs/TECHNICAL_OVERVIEW.md) | Tecnologías, conexión entre módulos y flujos de cálculo y guardado. |
| [Arquitectura](docs/ARCHITECTURE.md) | Capas, contratos, composición y arranque. |
| [Base de datos](docs/DATABASE.md) | Diagramas, tablas, relaciones, índices y migraciones. |
| [Decisiones de ingeniería](docs/ENGINEERING.md) | Persistencia, concurrencia y gestión de datos. |
| [Funcionalidades](docs/FEATURES.md) | Equipos, Versus, EV Lab, 1HITKO, Batalla, Entradas y Notas. |

[Índice completo](docs/README.md) · [Hoja de ruta](docs/ROADMAP.md) · [Sugerencias e incidencias](CONTRIBUTING.md)

## Autor y disponibilidad

**Diego de Arriba** · [Perfil de GitHub](https://github.com/DiegoARRFRA).

Proyecto personal en desarrollo. Este repositorio reúne su documentación y demostraciones; el código fuente es privado y la aplicación todavía no dispone de una descarga pública.

PokeChampions Core es un proyecto fan no oficial, sin afiliación con Nintendo, Creatures, GAME FREAK ni The Pokémon Company. Pokémon y sus recursos y marcas pertenecen a sus respectivos titulares. [Aviso de titularidad](NOTICE.md).
