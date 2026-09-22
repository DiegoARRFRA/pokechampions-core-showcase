<p align="right">
  <strong>Español</strong> · <a href="ENGINEERING.en.md">English</a>
</p>

# Decisiones de ingeniería

[← Portada](../README.md) · [Ficha técnica](TECHNICAL_OVERVIEW.md) · [Documentación](README.md)

## Reglas compartidas entre herramientas

Versus, EV Lab y 1HITKO necesitan resolver mecánicas comunes: habilidades, objetos y condiciones de combate. Las peticiones tipadas y los componentes de dominio compartidos evitan que cada pantalla interprete esas reglas por su cuenta.

Cada herramienta conserva su propio flujo de búsqueda o análisis y sus pruebas. La composición conecta la implementación del cálculo con el consumidor mediante un contrato. [Arquitectura](ARCHITECTURE.md).

## Migración con conservación de datos

Un error de lectura no debe interpretarse como una biblioteca vacía. El proceso de migración conserva los originales y separa la preparación de SQLite, la verificación del contenido y la activación de los repositorios.

Una preparación verificada pierde ese estado si su contenido cambia. Las revisiones y los controles SQL permiten detectar esa situación antes de usarla. Los errores de formato, compatibilidad y acceso se tratan de forma distinta. [Migración e integridad](DATABASE.md#migración-e-integridad).

## Guardado e idempotencia

Finalizar una partida implica guardar el resultado y preparar el siguiente borrador. Ambas acciones se coordinan en una transacción, con una identidad de registro y una revisión esperada.

Si la operación se repite, el repositorio consulta la confirmación existente. Si el borrador ha cambiado, detecta el conflicto. La recuperación distingue una partida ya confirmada de una inserción que acaba de revertirse. [Secuencia de guardado](TECHNICAL_OVERVIEW.md#guardar-una-partida).

## Modelo híbrido de persistencia

Los equipos y snapshots contienen estructuras que evolucionan con el producto. Se almacenan como JSON versionado, acompañado de columnas que permiten identificar, ordenar e indexar los registros.

Este diseño evita crear una tabla por cada atributo del juego. A cambio, los codecs y repositorios asumen parte de la validación semántica y de las asociaciones entre entidades. SQLite aporta transacciones, unicidad y los índices seleccionados. [Tablas y relaciones](DATABASE.md).

## Cancelación y ciclo de vida

Una búsqueda terminada después de abandonar la pantalla no debe reemplazar el resultado de otra petición. El servicio de 1HITKO comprueba que el trabajo siga vigente y dispone de progreso y cancelación.

El almacenamiento tiene un propietario compartido y una cola de operaciones. El cierre espera a las acciones admitidas. El isolate de SQL y el worker de cálculo tienen responsabilidades distintas y se gestionan por separado. [Concurrencia](TECHNICAL_OVERVIEW.md#concurrencia-y-estado).

## Datos reproducibles

Las importaciones se realizan durante el desarrollo a partir de referencias fijadas. Cada entrega utiliza catálogos empaquetados y terminología identificada por ID; una modificación externa no altera los datos de una instalación existente.

Actualizar una regulación requiere generar y validar los nuevos artefactos. Cuando una interacción no está suficientemente respaldada, se documenta su límite en lugar de adoptar una regla de otro formato. [Datos y exactitud](DATA_AND_ACCURACY.md).

## Perfilado del arranque

El análisis separa el trabajo de Flutter del tiempo de presentación de Android. Esa distinción permite localizar inicializaciones costosas y comparar el efecto de los cambios sin confundir el primer frame con el arranque completo.

El estudio recoge las mediciones, el entorno de emulador y la variación observada al repetir la prueba. [Rendimiento](PERFORMANCE.md).

[Validación y QA](VALIDATION.md) · [Base de datos](DATABASE.md) · [Galería](GALLERY.md)
