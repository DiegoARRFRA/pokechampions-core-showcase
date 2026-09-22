<p align="right">
  <strong>Español</strong> · <a href="TECHNICAL_OVERVIEW.en.md">English</a>
</p>

# Ficha técnica y funcionamiento

[← Portada](../README.md) · [Índice de documentación](README.md)

**Flutter y Dart en la interfaz y la lógica; Drift/SQLite para los datos del usuario; catálogos locales versionados para el análisis.** La aplicación funciona sin cuenta ni backend. Esta ficha describe las tecnologías y responsabilidades contrastadas con el manifiesto de dependencias y componentes del proyecto; no publica su implementación.

## Tecnologías y responsabilidad real

| Área | Tecnología | Uso en PokeChampions Core |
| --- | --- | --- |
| Interfaz y lenguaje | **Flutter · Dart** | Pantallas móviles, componentes reutilizables, temas claro/oscuro/sistema y modelos tipados. |
| Arquitectura | **Feature-first · capas · puertos y adaptadores** | Separa funcionalidades, coordinación, reglas y acceso a datos. La composición conecta implementaciones mediante contratos en componentes clave. |
| Estado | **Controladores · ChangeNotifier · Futures · Streams** | Coordina carga, estado visible, eventos y ciclo de vida. No equivale a usar un framework externo de estado ni a que toda consulta SQL sea reactiva. |
| Cálculo | **Dominio Dart · peticiones y respuestas tipadas** | Valida escenarios y aplica reglas compartidas por Versus y herramientas relacionadas en los ámbitos que coinciden. Las reglas aislables son puras y deterministas. |
| Búsquedas | **Isolates de Dart · mensajes · cancelación** | El servicio de 1HITKO dispone de un worker aislado para búsquedas, publica progreso y evita aplicar resultados cancelados o de trabajos sustituidos. No todos los cálculos usan isolates. |
| Persistencia | **Drift · SQLite mediante sqlite3 · path_provider** | Conserva equipos, notas e historial mediante repositorios locales; separa almacenamiento de usuario, catálogos y preferencias. |
| Preferencias | **shared_preferences** | Conserva ajustes ligeros como idioma, apariencia y audio; no sustituye la base de datos de equipos e historial. |
| Localización | **flutter_localizations · intl · ARB · catálogos por ID** | Interfaz y terminología del juego en español, inglés, alemán, francés, italiano, portugués, japonés y coreano. |
| Audio | **just_audio · audio_session** | Reproductor local detrás de un contrato, preferencias de reproducción y coordinación con la sesión/ciclo de vida. La QA audible prolongada tiene su propio alcance. |
| Generación | **drift_dev · build_runner · generadores de datos** | Generación de soporte de persistencia y preparación de artefactos durante el desarrollo; no constituye un servicio de compilación dentro de la app. |
| Integridad | **crypto · SHA-256 · JSON versionado** | Huellas de integridad y trazabilidad de artefactos. SHA-256 no significa que los datos estén cifrados. |
| Pruebas y análisis | **flutter_test · test · analyzer · flutter_lints** | Pruebas de lógica y widgets, regresiones y análisis estático; las campañas conservan su fecha y alcance. |
| Herramientas de entrega y perfilado | **Git · herramientas Flutter/Android · ADB · trazas** | Versionado, compilación Android, recorridos físicos y diagnóstico de arranque. No implica publicación en tiendas ni CI público del código privado. |

Las versiones de paquetes se gestionan en el proyecto de producción; esta ficha no es un archivo de dependencias instalable. Tampoco presenta la compatibilidad multiplataforma de Flutter como prueba de que todas las plataformas estén publicadas o validadas.

## Del gesto del usuario al resultado

```text
Usuario configura equipo, combatientes y condiciones
  → La pantalla entrega un estado estructurado al controlador
  → El flujo construye una petición tipada y comprueba el contexto
  → El servicio de cálculo aplica reglas y catálogos locales
  → Devuelve daño, condiciones de KO o una limitación explícita
  → La interfaz representa el resultado

Guardado: interfaz → repositorio → Drift / SQLite
Ajustes ligeros: interfaz → repositorio de preferencias
Búsqueda 1HITKO: escenario → worker → progreso / resultado / cancelación
```

El esquema resume responsabilidades, no una secuencia idéntica para todas las pantallas. Consultar daño no exige guardar el escenario; el almacenamiento no forma parte obligatoria de cada cálculo.

## Cómo se conectan las herramientas

**Equipos y Notas** conservan configuraciones reutilizables. **Versus** resuelve daño en un escenario explícito de uno contra uno; **EV Lab** explora la inversión defensiva para sobrevivir a ataques configurados. **1HITKO** recorre candidatos bajo sus propias restricciones y puede trasladar un escenario a Versus para examinarlo.

**Batalla** representa una situación de dobles y compara Velocidad, campo y efectos relevantes; no ejecuta una partida. **Entradas** prepara elecciones iniciales y abre la situación correspondiente en Batalla; su resultado se declara manualmente. **HISTÓRICO** conserva partidas declaradas y snapshots locales: no reconstruye los turnos ni debe confundirse con el registro de prácticas de Entradas.

## Tres clases de datos, tres responsabilidades

| Datos | Dónde y para qué |
| --- | --- |
| Del usuario | SQLite: equipos, notas y registros que deben sobrevivir al cierre y a las actualizaciones. Las migraciones priorizan conservar los datos anteriores. |
| De configuración | Preferencias locales: idioma, aspecto y audio. |
| Del juego | Catálogos empaquetados y versionados: formas, movimientos, habilidades, objetos y terminología. Las importaciones y verificaciones ocurren durante el desarrollo, no mediante consultas silenciosas a webs en cada cálculo. |

## Límites que importan

Es una arquitectura modular con puertos/adaptadores en componentes clave, **no una afirmación de hexagonal pura ni de independencia total de Flutter**. El producto no requiere servidor, cuentas o sincronización en la nube, y no se presenta como un simulador autónomo de turnos ni como una aplicación que consulte una IA para decidir el daño.

Los contratos permiten sustituir implementaciones en puntos definidos y probar lógica sin depender de toda la interfaz. No permiten deducir cobertura total ni garantizan por sí solos la exactitud de todas las mecánicas. Un contexto no demostrado debe quedar como limitación, no convertirse en una respuesta inventada.

[Arquitectura](ARCHITECTURE.md) · [Decisiones de ingeniería](ENGINEERING.md) · [Funcionalidades](FEATURES.md) · [Validación](VALIDATION.md)
