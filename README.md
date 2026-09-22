<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core

**Prepara equipos y analiza Pokémon Champions desde una aplicación Flutter que funciona offline, sin cuenta ni backend.**

> Escaparate público de producto e ingeniería. El código de la aplicación es privado; este repositorio no es un proyecto open source.

## Resumen técnico

| Área | Tecnología y función |
| --- | --- |
| **Aplicación** | **Flutter · Dart**: interfaz móvil, componentes reutilizables y modelos tipados. |
| **Arquitectura** | **Feature-first · capas · puertos/adaptadores** en componentes clave; dependencias conectadas por composición e inyección por constructor. |
| **Motor de análisis** | **Lógica Dart y contratos tipados**: escenario → validación → reglas y catálogos locales → daño, KO o limitación explícita. |
| **Datos del usuario** | **Drift · SQLite (sqlite3) · path_provider**: equipos, notas e historial mediante repositorios locales. |
| **Estado y búsquedas** | **Controladores · ChangeNotifier · Futures/Streams**; worker con **isolate** en 1HITKO, progreso y cancelación de trabajos. |
| **Preferencias** | **shared_preferences** para idioma, apariencia y audio, separado de los datos persistidos en SQLite. |
| **Idiomas** | **flutter_localizations · intl · ARB** y terminología por ID: ocho idiomas en la aplicación. |
| **Audio** | **just_audio · audio_session**: reproducción local y coordinación de sesión detrás de contratos. |
| **Generación e integridad** | **drift_dev · build_runner · JSON versionado · crypto/SHA-256**: generación durante el desarrollo y trazabilidad de artefactos. |
| **Calidad y entrega** | **flutter_test · test · analyzer · flutter_lints · Git**; compilación, perfilado y recorridos de QA con herramientas Flutter/Android. |

**Cómo funciona:** configuras un escenario → un controlador coordina la petición → el cálculo usa reglas y datos locales → la interfaz muestra el resultado. Guardar equipos, notas o partidas recorre otra vía: repositorio → Drift/SQLite. No necesita consultar un servidor para cada análisis.

**[Ficha técnica completa y flujos de funcionamiento](docs/TECHNICAL_OVERVIEW.md)** · [Arquitectura](docs/ARCHITECTURE.md) · [Toda la documentación ES/EN](docs/README.md)

## La aplicación, en imágenes

**Nueva tanda visual · 22 de septiembre de 2026.** Inicio, resultado de Versus y editor de equipos. Capturas reales de Android en español y tema claro; pulsa una imagen para ampliarla.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Inicio de PokeChampions Core con la interfaz renovada en tema claro"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: daño de Envite Ígneo, usos hasta KO y límites del escenario"></a>
  <a href="media/screenshots/team-builder.png"><img src="media/screenshots/team-builder.png" width="220" alt="Editor de equipos con integrantes, habilidades, objetos, naturalezas y tipos"></a>
</p>

### Versus en acción · 13 segundos

Elegir atacante y movimiento, calcular y consultar daño y KO en un escenario 1 contra 1.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Nueva demo de Versus: selección de movimiento y consulta del resultado"></a>

**[Ver Versus en MP4](media/demos/versus.mp4)** · [Equipos y builds](docs/GALLERY.md#equipos-y-builds) · [Entradas](docs/GALLERY.md#entradas) · [HISTÓRICO](docs/GALLERY.md#histórico) · **[Galería completa](docs/GALLERY.md)**

Seis demos nuevas y 16 capturas nuevas, con MP4 de **720 × 1440** y vistas previas GIF. Las escenas mantienen la velocidad grabada y una pausa final; no son benchmarks. La [demo anterior de 1HITKO](docs/GALLERY.md#1hitko) se conserva identificada, porque no se incluyó un nuevo recorrido de esa herramienta. [Procedencia y edición](media/README.md).

## Qué puedes hacer

| Herramienta | Para qué sirve |
| --- | --- |
| **Equipos / Team Builder** | Crear y guardar equipos de seis posiciones con formas, habilidades, naturaleza, entrenamiento, objetos y movimientos. |
| **Batalla** | Comparar Velocidad y contexto de una situación de dobles. No ejecuta turnos ni resuelve partidas completas. |
| **Versus** | Consultar daño causado y recibido en un escenario 1 contra 1, con configuración normal y avanzada. |
| **1HITKO** | Buscar candidatos a KO de un impacto bajo condiciones explícitas. La garantía de daño no garantiza el acierto del movimiento. |
| **EV Lab** | Explorar inversión defensiva y umbrales de supervivencia frente a ataques configurados. |
| **Entradas** | Practicar elecciones iniciales; los resultados de práctica se introducen manualmente. |
| **HISTÓRICO y Notas Pokémon** | Conservar resultados declarados, snapshots de equipos, anotaciones y configuraciones. |
| **Ajustes** | Elegir entre ocho idiomas y los temas claro, oscuro y del sistema. |

[Alcance funcional y límites](docs/FEATURES.md). La nueva galería incorpora el editor de equipos, builds recomendadas, cobertura defensiva y el módulo HISTÓRICO. El registro de prácticas de Entradas y el HISTÓRICO de partidas se presentan por separado.

## Ingeniería y documentación

**Arquitectura modular organizada por funcionalidades —feature-first—, con separación por capas y aplicación de puertos y adaptadores en componentes clave.** Las reglas aislables son puras y deterministas; no se presenta toda la aplicación como independiente de Flutter ni como hexagonal pura.

Cada documento tiene su versión española e inglesa, con selector recíproco y navegación en el mismo idioma. El [índice bilingüe](docs/README.md) también reúne participación, titularidad y documentación multimedia.

| Documento | Contenido |
| --- | --- |
| [Ficha técnica](docs/TECHNICAL_OVERVIEW.md) | Inventario de tecnologías, conexión de módulos y flujos de datos. |
| [Arquitectura](docs/ARCHITECTURE.md) | Organización, límites y responsabilidades de los componentes. |
| [Decisiones de ingeniería](docs/ENGINEERING.md) | Estado, cancelación, persistencia, localización e importaciones reproducibles. |
| [Validación y QA](docs/VALIDATION.md) | Campañas históricas, alcance y comprobaciones pendientes. |
| [Rendimiento](docs/PERFORMANCE.md) | Caso de arranque en emulador y sus limitaciones. |
| [Datos y exactitud](docs/DATA_AND_ACCURACY.md) | Fuentes, incertidumbre y actualizaciones de regulación. |
| [Hoja de ruta](docs/ROADMAP.md) | Dirección del producto y del showcase. |

### Evidencia con fecha y alcance

El checkpoint público de la aplicación llega hasta el **14 de septiembre de 2026**. Recoge una suite en host de **4.849 pruebas correctas, 0 fallos y 0 omisiones**. Campañas históricas distintas documentan **104.091 escenarios de Versus** y **361 formas / 12.987 pares de 1HITKO**. Son conjuntos separados: no se suman ni acreditan cobertura completa o una versión posterior.

La QA física seleccionada corresponde a **POCO F5 / Android 15**, incluida la actualización de la build externa de QA **1.0.0+2**. El estudio de rendimiento corresponde a un **emulador**: su mejora de motor a primer frame no equivale al arranque completo de Android. La actualización visual preparada el **22 de septiembre de 2026** no amplía esa evidencia ni identifica por sí sola la build exacta grabada. El material anterior conservado está identificado en la galería.

## Estado y límites

El producto sigue en desarrollo. El feedback puede centrarse en sugerencias, incidencias y documentación pública: [guía de participación](CONTRIBUTING.md).

Este repositorio reúne documentación y material de presentación seleccionado; no distribuye código fuente de la aplicación, datasets internos, pruebas privadas, credenciales, APK ni música. No ofrece una descarga pública de la aplicación.

Las comprobaciones del escaparate se describen en [Validación del showcase](CONTRIBUTING.md#validación-del-showcase). Son independientes de la evidencia histórica de la aplicación.

## Titularidad y proyecto no oficial

Este showcase no concede una licencia open source. [Aviso de titularidad](NOTICE.md).

PokeChampions Core es un **proyecto fan no oficial**. Pokémon, Pokémon Champions y sus nombres, personajes, recursos y marcas pertenecen a sus respectivos titulares. El proyecto no está afiliado, respaldado ni patrocinado por Nintendo, Creatures, GAME FREAK ni The Pokémon Company.
