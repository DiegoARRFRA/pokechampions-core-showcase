<p align="right">
  <strong>Español</strong> · <a href="ENGINEERING.en.md">English</a>
</p>

# Decisiones de ingeniería y compromisos

[← Portada](../README.md) · [Ficha técnica](TECHNICAL_OVERVIEW.md) · [Documentación](README.md)

Esta página relaciona problemas con mecanismos observados en la implementación. Expone sus ventajas y límites sin convertirlos en afirmaciones de calidad absoluta ni atribuir resultados de pruebas no ejecutadas.

## 1. Una misma pregunta mecánica, varias interfaces

**Problema.** Versus, EV Lab y 1HITKO podrían divergir si cada pantalla reinterpretara habilidades, objetos y condiciones.

**Mecanismo.** Peticiones/resultados tipados y componentes de dominio compartidos donde coincide el alcance. La composición conecta una implementación del puerto de cálculo al consumidor.

**Compromiso.** Compartir reglas no elimina la necesidad de probar cada flujo. La búsqueda de candidatos y la optimización defensiva siguen planteando preguntas distintas. No se impone una arquitectura hexagonal estricta a toda la aplicación. [Arquitectura](ARCHITECTURE.md).

## 2. Migrar sin convertir un fallo en una biblioteca vacía

**Problema.** Pasar de almacenamiento anterior a SQLite puede perder datos si se considera que “no se pudo leer” significa “no había nada”.

**Mecanismo.** Conservación de originales, preparación y verificación antes de activar repositorios, errores clasificados y bloqueo de escrituras incoherentes. Una generación verificada que cambia se invalida mediante revisión y controles SQL.

**Compromiso.** La seguridad del proceso añade estados y más casos de recuperación. Los hashes y el sellado de preparación no equivalen a cifrado ni a una defensa completa frente a un atacante. [Migración e integridad](DATABASE.md#migración-e-integridad).

## 3. Finalizar una partida de forma coherente

**Problema.** Una doble confirmación, un borrador cambiado o un error entre dos escrituras puede duplicar el resultado o mostrar éxito sin persistencia.

**Mecanismo.** Finalización transaccional del borrador, identidad del registro, revisión esperada y consulta de confirmaciones previas. El resultado y el borrador sucesor se coordinan dentro de la operación.

**Compromiso.** Idempotencia y recuperación requieren distinguir una confirmación anterior de una escritura nueva revertida. No basta con deshabilitar el botón. [Secuencia de guardado](TECHNICAL_OVERVIEW.md#guardar-una-partida).

## 4. Estructura SQL sin normalizar cada atributo del juego

**Problema.** Equipos, configuraciones y snapshots evolucionan, mientras que consultas frecuentes necesitan IDs y orden estable.

**Mecanismo.** Esquema híbrido: columnas indexadas para selección y unicidad, contenido JSON validado y codecs versionados. Once tablas, con una FK real y asociaciones lógicas documentadas por separado.

**Compromiso.** Parte de la integridad queda en la aplicación y no todos los filtros se ejecutan en SQL. No se infieren consultas rápidas solo porque exista un índice ni se presentan tablas de dominio imaginarias. [Diccionario y relaciones](DATABASE.md).

## 5. Cancelación y propiedad del trabajo

**Problema.** Una operación terminada tarde puede notificar a un consumidor destruido o reemplazar resultados de una petición más reciente.

**Mecanismo.** Propietarios de recursos explícitos, cierre coordinado, progreso/cancelación y comprobación del trabajo vigente. El almacenamiento nativo y la búsqueda de 1HITKO usan aislamiento con responsabilidades diferentes.

**Compromiso.** Un isolate no implica ausencia de bloqueos ni rendimiento garantizado; hacen falta mediciones y casos de ciclo de vida específicos. Los repositorios observados no se describen como universalmente reactivos. [Concurrencia](TECHNICAL_OVERVIEW.md#concurrencia-y-estado).

## 6. Exactitud y reproducibilidad de los datos

**Problema.** Las referencias externas y regulaciones pueden cambiar sin coincidir con los datos de una instalación existente.

**Mecanismo.** Importación durante el desarrollo, revisiones fijadas, procedencia e identificadores estables. La aplicación consume catálogos empaquetados; una traducción no gobierna una regla mecánica.

**Compromiso.** Actualizar el juego exige preparar y validar nuevos artefactos. La falta de evidencia se expresa como limitación, no se completa por semejanza con otro formato. [Fuentes y exactitud](DATA_AND_ACCURACY.md).

## 7. Medir la parte mejorada, no prometer todo el arranque

El estudio histórico del primer frame separa el trabajo de Flutter del tiempo total de presentación de Android. Publicar también la degradación de una repetición bajo presión del emulador evita atribuir a la aplicación un resultado que depende del entorno. Es un caso documentado anterior, no una medición nueva del código actual. [Rendimiento](PERFORMANCE.md).

## Cómo interpretar el conjunto

Estos mecanismos permiten discutir diseño de producto, modelado de datos, transacciones, asincronía, pruebas y mantenimiento. Las demos demuestran flujos visibles; la documentación describe implementación revisada; los recuentos históricos pertenecen a sus propios checkpoints. Ninguno sustituye por sí solo una revisión completa del código privado.

[Validación y QA](VALIDATION.md) · [Base de datos](DATABASE.md) · [Galería](GALLERY.md)
