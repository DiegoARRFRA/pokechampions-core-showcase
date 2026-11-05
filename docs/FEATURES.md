<p align="right"><strong>Español</strong> · <a href="FEATURES.en.md">English</a></p>

# Funciones

[← Portada](../README.md) · [Galería](GALLERY.md) · [Índice](README.md)

Estado contrastado el **5 de noviembre de 2026**, sobre **1.0.1 (código Android interno 46)**. Los nombres de las herramientas siguen la interfaz española; SP es el sistema de puntos de estadísticas que muestra la aplicación.

## Batalla

Prepara un escenario de dobles con hasta dos integrantes por lado y analiza velocidades, habilidades de entrada, clima y efectos. **Simular inicio del turno 1** está inmediatamente encima de **Configurar efectos**. El análisis distingue certezas, empates y datos desconocidos; no resuelve un combate completo, turnos sucesivos ni decisiones del adversario.

Carga integrantes desde equipos propios, equipos de torneos o notas. La selección admite uno o dos miembros: una posición elegida tiene prioridad, la única libre se usa directamente y, cuando hay alternativas o sustituciones, se elige el destino. No se reemplaza el resto del equipo por cargar una configuración.

SP y naturaleza pueden ajustarse temporalmente para comparar escenarios sin reescribir la fuente guardada.

## Versus

Configura atacante, defensor y movimiento; consulta rango de daño, PS restantes y usos para un KO posible o garantizado. Las condiciones de combate, estadísticas, habilidad y objeto forman parte del cálculo. **Modo Maestro** permite explorar los efectos del escenario y comparar su influencia.

Las notas se pueden cargar en atacante o defensor. Se recuperan los campos guardados y compatibles; una habilidad ausente no se inventa. Si hay que completar la elección, el editor pide una habilidad legal antes de guardar.

## EV Lab

Sigue disponible dentro de Versus para explorar inversión en PS y defensas y buscar un reparto que sobreviva al ataque configurado. Su nombre histórico se conserva, aunque la interfaz de entrenamiento presenta **SP**. Los resultados dependen del ataque, naturaleza, efectos y restricciones elegidos, no constituyen un reparto universal.

## 1HITKO

Busca candidatos de KO de un golpe contra el defensor configurado. Ofrece progreso, cancelación, ordenación y filtrado de resultados; **Modo Maestro defensivo** permite configurar el escenario relevante del defensor. Los trabajos cancelados o sustituidos no deben publicar resultados de otra búsqueda.

**Garantizado** significa que el daño mínimo entre las tiradas contempladas alcanza los PS objetivo bajo esas condiciones, **si el movimiento impacta**. No garantiza precisión, ausencia de protección, un crítico no configurado ni que el rival mantenga esa configuración. El buscador excluye multigolpes e impactos adicionales por habilidad; esas interacciones se pueden analizar en Versus dentro de su cobertura.

## Equipos y cobertura

Crea equipos, configura sus integrantes y guarda habilidad, objeto, naturaleza, SP y movimientos. Puedes incorporar un Pokémon desde una nota y revisar la cobertura defensiva, con detalle de debilidades, resistencias e inmunidades y efectos de habilidades contemplados.

## Torneos y builds

La biblioteca de equipos permite filtrar por regulación, torneo y fecha, seleccionar varios torneos y ordenar resultados. La regulación pertenece al evento histórico: no se cambia una competición antigua a la regulación más reciente por su fecha de consulta. Si no está confirmada, se indica como desconocida.

El catálogo empaquetado del **4 de noviembre de 2026 contiene 730 equipos de 19 torneos**. La selección usa los **puestos 1–32 por evento y categoría oficial**, no los primeros 32 registros del archivo ni 32 para todo el torneo. Los rangos publicados se admiten cuando su extremo superior no supera 32; no se completan posiciones ni datos ausentes por inferencia.

Los builds de **Smogon Strategies** y los equipos de torneos conservan su procedencia. Son instantáneas incluidas con la aplicación, no una consulta ni sincronización automática con Smogon, Victory Road o los organizadores. [Datos y exactitud](DATA_AND_ACCURACY.md).

## Notas Pokémon

Las configuraciones se agrupan por Pokémon y forma. La biblioteca permite orden alfabético localizado y por actualización reciente; dentro de un grupo se elige la configuración concreta, incluso si solo hay una.

Las notas guardan naturaleza, SP y habilidad; las configuraciones completas pueden conservar también objeto y movimientos. Se reutilizan desde Batalla, Versus, 1HITKO y equipos en los campos compatibles. Las notas antiguas sin habilidad se mantienen legibles, sin atribuirles una elección que nunca se guardó.

Un reparto publicado incompleto muestra **—** para los SP desconocidos. Al cargarlo, esos campos usan cero como punto de partida editable y se muestra un aviso; eso no afirma que el autor publicase cero. La confirmación explícita de los campos revisados permite guardar una configuración propia completa.

## Biblioteca

**STATS** ofrece estadísticas y los movimientos que aprende cada Pokémon. **Movimientos y usuarios** permite consultar un movimiento y qué Pokémon pueden aprenderlo.

Ambas vistas de movimientos comparten filtros de tipo, potencia y categoría de ataque: **Físico, Especial y Estado**. Admiten varias categorías: se combinan como alternativas entre sí y se cruzan con los otros filtros y la búsqueda. Ninguna categoría marcada o las tres equivalen a no limitar la categoría. La selección se aplica o cancela y la lista se puede ordenar.

## Entradas e Histórico

**Entradas** permite practicar la pareja inicial frente a equipos propios o del catálogo, decidir antes de descubrir la entrada rival y registrar manualmente el resultado de la práctica.

**Histórico** guarda partidas, rivales, notas y resúmenes por equipo. No lee automáticamente resultados del juego. La confirmación del borrador utiliza identidad y revisión para evitar duplicados o sobrescrituras silenciosas. [Persistencia](DATABASE.md).

## Apariencia, idiomas y audio

Temas claro, oscuro y del sistema; iconos actuales y logo interior transparente. Ocho idiomas: español, inglés, francés, alemán, italiano, portugués, japonés y coreano. Los catálogos y herramientas principales funcionan offline; abrir una fuente o la política web requiere conexión.

El audio es opcional y tiene controles de reproducción y volumen. El catálogo incorpora **Tribute to Anime** y **Jojo´s rute** (nombre exacto mostrado). Las demos públicas no llevan audio ni distribuyen canciones completas.

[Validación](VALIDATION.md) · [Pendientes](ROADMAP.md)
