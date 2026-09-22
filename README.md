<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core

**Prepara equipos y analiza Pokémon Champions desde una aplicación Flutter que funciona offline, sin cuenta ni backend.**

> Escaparate público de producto e ingeniería. El código de la aplicación es privado; este repositorio no es un proyecto open source.

## La aplicación, en imágenes

Inicio, resultado de Versus y búsqueda de 1HITKO. Capturas reales de Android en español y tema oscuro; pulsa una imagen para ampliarla.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Inicio con los accesos a las herramientas de PokeChampions Core"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: rango de daño, factores, KO y límites del cálculo"></a>
  <a href="media/screenshots/1hitko-results.png"><img src="media/screenshots/1hitko-results.png" width="220" alt="1HITKO: candidatos, movimientos y rangos de daño"></a>
</p>

### Versus en acción · 13 segundos

Elegir un movimiento, calcular y consultar daño y KO en un escenario 1 contra 1.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Demo de Versus: selección de movimiento y consulta del resultado"></a>

**[Ver Versus en MP4](media/demos/versus.mp4)** · [Demo 1HITKO](docs/GALLERY.md#1hitko) · [Demo Entradas](docs/GALLERY.md#entradas) · **[Galería completa](docs/GALLERY.md)**

Las demos están editadas para presentación y no son benchmarks. La captura fija de Versus y su demo muestran ataques distintos. [Procedencia y edición](media/README.md).

## Qué puedes hacer

| Herramienta | Para qué sirve |
| --- | --- |
| **Equipos / Team Builder** | Crear y guardar equipos de seis posiciones con formas, habilidades, naturaleza, entrenamiento, objetos y movimientos. |
| **Batalla** | Comparar Velocidad y contexto de una situación de dobles. No ejecuta turnos ni resuelve partidas completas. |
| **Versus** | Consultar daño causado y recibido en un escenario 1 contra 1, con configuración normal y avanzada. |
| **1HITKO** | Buscar candidatos a KO de un impacto bajo condiciones explícitas. La garantía de daño no garantiza el acierto del movimiento. |
| **EV Lab** | Explorar inversión defensiva y umbrales de supervivencia frente a ataques configurados. |
| **Entradas** | Practicar elecciones de salida; los resultados de práctica se introducen manualmente. |
| **HISTÓRICO y Notas Pokémon** | Conservar resultados declarados, snapshots de equipos, anotaciones y configuraciones. |
| **Ajustes** | Elegir entre ocho idiomas y los temas claro, oscuro y del sistema. |

[Alcance funcional y límites — en inglés](docs/FEATURES.md). La galería incluye ocho capturas; no contiene vistas del editor de equipos ni del módulo HISTÓRICO. El registro mostrado pertenece a Entradas.

## Ingeniería y documentación

**Arquitectura modular organizada por funcionalidades —feature-first—, con separación por capas y aplicación de puertos y adaptadores en componentes clave.**

Flutter y Dart para la aplicación; Drift y SQLite para los datos del usuario; catálogos versionados empaquetados para el funcionamiento offline. Los componentes de cálculo compartidos consumen peticiones y resultados tipados. Las reglas que permiten aislarse se mantienen puras y deterministas: no se presenta toda la aplicación como un núcleo independiente de Flutter ni como arquitectura hexagonal pura.

La documentación técnica siguiente está **en inglés**:

| Documento | Contenido |
| --- | --- |
| [Architecture](docs/ARCHITECTURE.md) | Organización, límites y responsabilidades de los componentes. |
| [Engineering](docs/ENGINEERING.md) | Decisiones sobre estado, persistencia, localización e importaciones reproducibles. |
| [Validation & QA](docs/VALIDATION.md) | Campañas históricas, alcance y comprobaciones pendientes. |
| [Performance](docs/PERFORMANCE.md) | Caso de arranque medido en emulador y sus limitaciones. |
| [Data & Accuracy](docs/DATA_AND_ACCURACY.md) | Fuentes, incertidumbre y actualizaciones de regulación. |
| [Roadmap](docs/ROADMAP.md) | Dirección del producto y del showcase. |

### Evidencia con fecha y alcance

El checkpoint público de la aplicación llega hasta el **14 de septiembre de 2026**. Recoge una suite en host de **4.849 pruebas correctas, 0 fallos y 0 omisiones**. Campañas históricas distintas documentan **104.091 escenarios de Versus** y **361 formas / 12.987 pares de 1HITKO**. Son conjuntos separados: no se suman ni acreditan cobertura completa o una versión posterior.

La QA física seleccionada corresponde a **POCO F5 / Android 15**, incluida la actualización de la build externa de QA **1.0.0+2**. El estudio de rendimiento corresponde a un **emulador**: su mejora de motor a primer frame no equivale al arranque completo de Android. Las demos, preparadas el **17 de septiembre de 2026**, no identifican por sí solas una build exacta ni constituyen nuevas pruebas de la aplicación.

## Estado y límites

El producto sigue en desarrollo. El feedback puede centrarse en sugerencias, incidencias y documentación pública: [guía de participación — en inglés](CONTRIBUTING.md).

Este repositorio reúne documentación y material de presentación seleccionado; no distribuye el código fuente de la aplicación, datasets internos, pruebas privadas, credenciales, APK ni música. No ofrece una descarga pública de la aplicación.

Las comprobaciones del propio escaparate se describen en [Validación del showcase](CONTRIBUTING.md#validación-del-showcase--showcase-validation). Son independientes de la evidencia histórica de la aplicación.

## Titularidad y proyecto no oficial

Este showcase no concede una licencia open source. [Aviso de titularidad — en inglés](NOTICE.md).

PokeChampions Core es un **proyecto fan no oficial**. Pokémon, Pokémon Champions y sus nombres, personajes, recursos y marcas pertenecen a sus respectivos titulares. El proyecto no está afiliado, respaldado ni patrocinado por Nintendo, Creatures, GAME FREAK ni The Pokémon Company.