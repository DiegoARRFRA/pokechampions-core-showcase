<p align="right">
  <strong>Español</strong> · <a href="README.en.md">English</a>
</p>

# PokeChampions Core

### Preparación competitiva. Análisis de daño. Datos locales.

Aplicación móvil para preparar equipos y analizar Pokémon Champions sin cuenta ni servidor. Un proyecto personal de **[Diego de Arriba](https://github.com/DiegoARRFRA)** que conecta desarrollo de producto, lógica de dominio, persistencia y validación en Android.

**Flutter · Dart · Drift/SQLite · Arquitectura modular · Offline-first**

[Ficha técnica](docs/TECHNICAL_OVERVIEW.md) · [Base de datos y diagramas](docs/DATABASE.md) · [Arquitectura](docs/ARCHITECTURE.md) · [Demos](docs/GALLERY.md) · [Documentación ES/EN](docs/README.md)

> **Showcase de producto e ingeniería.** El código de producción es privado; aquí se publican la presentación, las decisiones técnicas y el modelo de datos documentado, no la implementación.

## La ingeniería en un minuto

| Área | Implementación y responsabilidad |
| --- | --- |
| **Interfaz y producto** | Flutter/Dart; herramientas de equipos, cálculo, entrenamiento de salidas e historial; ocho idiomas y temas claro/oscuro/sistema. |
| **Arquitectura** | Organización por funcionalidades y capas; contratos tipados, composición e inyección por constructor. Puertos/adaptadores en componentes clave. |
| **Cálculo** | Escenario explícito → validación → reglas y catálogos locales → resultado de daño, KO o limitación documentada. |
| **Persistencia** | Drift/SQLite, **11 tablas en el esquema v2**; columnas indexadas y contenido JSON validado. Equipos, notas, historial, rivales y recuperación. |
| **Concurrencia** | Almacenamiento nativo en un isolate de Drift; operaciones coordinadas en cola FIFO; worker de búsqueda en 1HITKO con progreso y cancelación. |
| **Fiabilidad** | Transacciones, identidad y revisión de borradores, conservación de datos previos y publicación del almacenamiento solo después de verificarlo. |
| **Entrega y calidad** | Pruebas Dart/Flutter, análisis estático, generación reproducible y QA Android con alcance documentado. No se confunden demos con pruebas. |

**Dos recorridos separados:** analizar usa reglas y catálogos empaquetados; guardar usa repositorios y SQLite. El proyecto no depende de una petición a un servidor para resolver cada cálculo.

## El producto, funcionando

Inicio, resultado de Versus y editor de equipos. Capturas reales de Android; pulsa para ampliar.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Inicio de PokeChampions Core en tema claro"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: rango de daño, usos hasta KO y límites del escenario"></a>
  <a href="media/screenshots/team-builder.png"><img src="media/screenshots/team-builder.png" width="220" alt="Editor de equipos con integrantes, habilidades, objetos y naturalezas"></a>
</p>

### Versus en acción

Seleccionar atacante y movimiento, calcular y leer el resultado.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Demo real de Versus: selección de movimiento y cálculo de daño"></a>

**[Ver MP4](media/demos/versus.mp4)** · [Equipos y builds](docs/GALLERY.md#equipos-y-builds) · [Entradas](docs/GALLERY.md#entradas) · [Galería completa](docs/GALLERY.md)

 [Procedencia](media/README.md).

## Decisiones que merece la pena revisar

| Problema de ingeniería | Solución observable | Lectura |
| --- | --- | --- |
| No perder datos al cambiar de almacenamiento | Preparación, verificación y activación separadas; originales preservados y fallos explícitos. | [Migraciones e integridad](docs/DATABASE.md#migración-e-integridad) |
| Evitar duplicar una partida o confirmar un guardado fallido | Finalización del borrador en transacción, con identidad y revisión esperada. | [Flujo de guardado](docs/TECHNICAL_OVERVIEW.md#guardar-una-partida) |
| Compartir cálculo sin duplicar reglas entre pantallas | Contratos tipados y composición de servicios; separación de escenario, evaluación y presentación. | [Arquitectura](docs/ARCHITECTURE.md) |
| No bloquear la interfaz con trabajo intensivo | Ejecución nativa de almacenamiento y búsquedas aisladas, con control del ciclo de vida. | [Concurrencia](docs/TECHNICAL_OVERVIEW.md#concurrencia-y-estado) |

## Evidencia, con contexto

La campaña host aceptada el **20 de septiembre de 2026** registró **5.058 pruebas correctas, 0 fallos y 0 omisiones**, en una ejecución ordinaria, serial y sin filtros. El checkpoint anterior del **14 de septiembre** conserva sus **4.849 pases**. Son estados de validación distintos; esta revisión documental no vuelve a ejecutar la suite ni certifica cambios posteriores.

Otras campañas históricas documentan **104.091 escenarios de Versus** y **361 formas / 12.987 pares de 1HITKO**. No se suman entre sí ni demuestran cobertura completa de versiones posteriores. [Matriz de evidencia y alcance](docs/VALIDATION.md).

La QA física documentada incluye recorridos seleccionados en **POCO F5 / Android 15**. El caso de rendimiento publicado corresponde a un **emulador**, no a una medición equivalente en ese teléfono. [Validación y límites](docs/VALIDATION.md) · [Caso de rendimiento](docs/PERFORMANCE.md).

La revisión documental del esquema y de componentes de almacenamiento del **22 de septiembre de 2026** amplía la explicación técnica, no la certificación de la aplicación. La implementación y las actas completas permanecen privadas.

## Recorrido de lectura

**Producto:** [funcionalidades](docs/FEATURES.md) → [galería](docs/GALLERY.md).  
**Revisión técnica:** [ficha completa](docs/TECHNICAL_OVERVIEW.md) → [arquitectura](docs/ARCHITECTURE.md) → [base de datos](docs/DATABASE.md) → [decisiones y compromisos](docs/ENGINEERING.md).  
**Calidad:** [validación](docs/VALIDATION.md) → [rendimiento](docs/PERFORMANCE.md) → [datos y exactitud](docs/DATA_AND_ACCURACY.md).

## Autor, estado y alcance

**Diego de Arriba** · [Perfil de GitHub](https://github.com/DiegoARRFRA). Proyecto personal en desarrollo, presentado mediante documentación bilingüe y demostraciones reales. [Participación](CONTRIBUTING.md) · [Hoja de ruta](docs/ROADMAP.md).

Batalla representa situaciones de dobles; no ejecuta partidas completas. Entradas practica elecciones iniciales y registra resultados manuales. HISTÓRICO y el registro de Entradas son funciones distintas. El repositorio no ofrece código de producción ni descarga pública de la app, y no publica datos de usuario, datasets internos, APK, claves ni música.

**Proyecto fan no oficial.** Pokémon y las marcas y recursos relacionados pertenecen a sus respectivos titulares. No existe afiliación, respaldo ni patrocinio de Nintendo, Creatures, GAME FREAK o The Pokémon Company. Este showcase no concede una licencia open source. [Titularidad](NOTICE.md).
