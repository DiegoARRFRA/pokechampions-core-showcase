<p align="right"><strong>Español</strong> · <a href="SCENARIOS.en.md">English</a></p>

# Revisión multilingüe reproducible

[← Portada](../README.md) · [Galería](GALLERY.md) · [Validación](VALIDATION.md) · [English](SCENARIOS.en.md)

Revisión del **14/11/2026** de la versión pública **1.0.1**, código Android **46**, revisión de aplicación `76e783aa1876e812bc971e5eafeeffd2aa38821f`. El código 46 es trazabilidad interna; la aplicación muestra 1.0.1. La ficha pública de Google Play respondió sin autenticación y el autor confirmó ese código. No se accedió a Play Console ni a un teléfono personal.

Las ocho galerías contienen **64 imágenes nuevas: ocho por idioma**, con datos ficticios aislados. Inicio, Biblioteca y torneos son **24 capturas de la release instalada en un emulador Android 16/API 36 x86_64**. Las otras 40 son **renders de widgets Flutter reales en Windows**, usando el motor y catálogos de esa revisión. HOST no acredita ejecución Android. Los términos oficiales ingleses retenidos en **pt-PT** son una decisión de localización documentada, no un cambio a portugués brasileño.

## Escenarios equivalentes

Los nombres de Pokémon y movimientos se localizan en la interfaz. Los identificadores canónicos, condiciones y resultados se mantienen. Los ejemplos no son recomendaciones competitivas ni se han modificado repartos de torneos para producir imágenes.

| Caso | Preparación y pasos | Resultado observado |
| --- | --- | --- |
| HOME-01 / HOME-02 | Abrir Inicio; seleccionar idioma y tema oscuro; cerrar el proceso propio y arrancarlo de nuevo. | Inicio conserva idioma y tema en los ocho idiomas en Android. |
| VS-01 | Venusaur con Overgrow frente a Blastoise con Torrent, naturaleza neutra, 0 SP, sin objeto y PS completos. Elegir Giga Drain y calcular hasta cuatro usos. Cambiar después el movimiento. | **84–98 PS**, KO posible y garantizado en dos usos calculados; el cambio invalida el resultado anterior. HOST. |
| VS-flamethrower | Charizard → Venusaur, Flamethrower; configuración neutra, 0 SP, sin objeto y primeras habilidades legales. | **110–132 PS**, iguales en los ocho idiomas. HOST. |
| VS-hydropump | Blastoise → Charizard, Hydro Pump; mismas condiciones. | **126–150 PS**. HOST. |
| VS-thunderbolt | Luxray → Politoed, Thunderbolt; mismas condiciones. | **122–146 PS**. HOST. |
| BATTLE-01 | Politoed y Metagross frente a Skarmory y Luxray; Velocidad conocida, sol manual. Abrir análisis. | Orden estimado y efectos del estado seleccionado; no ejecuta turnos. HOST. |
| BATTLE-02 | Preparar cada lado con cero, uno o dos huecos ocupados. Cargar una nota de Venusaur y alternar el inicio del turno 1. | Un hueco libre se usa automáticamente; ambos vacíos u ocupados exigen elección. Conserva pareja, otro lado y nota fuente. Seis variantes por idioma, HOST. |
| OHKO-01 | Archaludon/Stamina, neutra, 0 SP, sin objeto, PS100%, sin crítico ni efectos adicionales. Buscar y esperar a que termine. | **206 candidatos** en este catálogo, en los ocho idiomas en HOST y además en coreano en Android. Se libera el trabajador HOST al salir. No es una cifra universal. |
| TEAM-01 | Venusaur, Skarmory, Metagross, Politoed, Luxray y Snorlax; abrir Cobertura. | Matriz defensiva de seis integrantes. HOST. |
| TEAM-02 | Abrir editor de un equipo ficticio, cancelar la selección de nota, volver a añadirla al slot 2, guardar y reabrir. | Cancelar no escribe; configuración reabierta y nota original intacta. HOST con repositorios controlados. |
| NOTES-01 | Dos Venusaur/Chlorophyll: Modest, 2 HP/32 SpA/32 Spe; Bold, 32 HP/16 Def/18 SpD. Abrir su grupo. | Dos notas localizadas de 66 SP; sin atribución a publicaciones. HOST. |
| NOTES-02 | Intentar guardar sin naturaleza; elegir Lonely y guardar explícitamente. | Conserva borrador al rechazar; después guarda naturaleza, habilidad, SP y Giga Drain. HOST. |
| LIB-01 | Abrir Movimientos y usuarios, elegir Físico y Especial y aplicar. | **334 resultados**, HOST y Android en los ocho idiomas. |
| CAT-01 | Abrir Mis equipos → Lista oficial → selector de torneo. | Fechas y regulación histórica visibles en HOST y Android; los nombres de temporada 2027 corresponden también a eventos celebrados en 2026. Catálogo empaquetado del 04/11, sin importaciones nuevas. |
| HISTORY-01 | Registrar una victoria ficticia con nombre Unicode y reabrir pantalla/repositorio. | Conserva resultado, nombre e identidad del equipo. HOST con preferencias simuladas. |
| OPEN-01 | Dos equipos sintéticos de seis, reglas empaquetadas y semilla 4242. Elegir pareja, abrir Batalla, marcar ganada y terminar. | Pareja bloqueada, una práctica guardada y ningún registro añadido al Histórico de partidas. HOST. |
| STORE-01 | Crear nota y equipo en una base SQLite temporal, editar nombre, cerrar conexión y abrir la misma base. | Contenido completo conservado en los ocho idiomas. SQLite real en HOST; no prueba el backend Android. |
| VISUAL-01 / VISUAL-02 | Biblioteca a 320px lógicos y texto al 130 %, oscuro y claro. | Sin excepciones de layout; revisión visual adicional conservada en privado. |

Los casos completos, condiciones, pasos, modalidad, estado y observación por idioma están en la [matriz JSON](review/scenarios.json) y su [CSV](review/scenarios.csv). **217 observaciones aprobadas y 24 no ejecutadas** no equivalen a un número de tests independientes ni a cobertura total. Las regresiones compartidas y las correcciones se registran aparte.

## Defectos reproducidos y correcciones separadas

| Incidencia | Estado en la release pública | Corrección para revisión |
| --- | --- | --- |
| SP desconocidos | **Fallido:** ocho mensajes atribuyen los SP desconocidos a una publicación, aunque también se llega desde una configuración manual sin procedencia publicada. | Mensaje neutral en ocho idiomas. La reproducción de dominio pasa; las ocho comprobaciones de copia fallan antes y pasan después. |
| Interpolación japonesa de Versus | **Fallido:** tres mensajes colocan el contador y el nombre de la técnica en un orden poco natural. | Orden japonés corregido, conservando todos los parámetros y valores. Regresión falla antes y pasa después. |
| Glifo japonés en HOST | Fallo del arnés Windows con su fuente de reserva; el glifo aparece correctamente en Android. | Se repitieron los renders JA/KO con la fuente CJK del emulador. Ningún recurso de fuente se añade al producto o al showcase. |

Las correcciones de aplicación quedan en una rama privada de revisión. **No se ha publicado otra versión de la aplicación.** Las galerías representan la release vigente, sin incorporar silenciosamente textos corregidos aún no distribuidos. La frase japonesa anterior puede verse en su imagen de Versus. Las capturas de repetición sobre el código corregido son evidencia privada de la propuesta.

## Modalidades, intentos y límites

- Ocho ejecuciones HOST de captura, una por idioma, más dos repeticiones CJK. Cada una usa widgets, catálogos y motor reales, con repositorios ficticios aislados cuando procede. No se suman como una suite global.
- Once pruebas de interacción/almacenamiento por idioma: **88 pases**, ocho procesos separados. Histórico usa preferencias simuladas; STORE-01 usa SQLite real. No confundir ambas modalidades.
- Las regresiones existentes de cálculo y ciclo de vida contrastan referencias independientes y contratos de 1HITKO. La coincidencia entre idiomas por sí sola no acredita exactitud del motor. Los resultados fechados están en [Validación](VALIDATION.md).
- Se conservan los intentos fallidos del arnés, el arranque con ANR de System UI y las repeticiones. Una consulta AX fallida durante la búsqueda no se trató como evidencia ni se reutilizó su XML anterior. Ningún proceso ajeno se cerró.
- **No ejecutado en esta campaña:** móvil físico, escucha humana/Bluetooth/llamadas, runtime 16 KiB, durabilidad Android de todas las entidades en ocho idiomas y todas las combinaciones de fuentes/filtros/efectos en cada traducción. Las regresiones compartidas no sustituyen ese recorrido completo.
- Se revisaron visualmente las 64 imágenes y 16 variantes estrechas/claro/oscuro. Esto no es una auditoría con hablantes nativos ni una prueba con lector de pantalla. No se midieron mejoras de rendimiento.

Originales y registros completos permanecen privados. El [manifiesto](../media/manifest.json) identifica cada imagen, escenario, versión, revisión, entorno, tema, resolución, escala, dimensiones, bytes y SHA-256; no contiene rutas internas ni datos personales de uso.
