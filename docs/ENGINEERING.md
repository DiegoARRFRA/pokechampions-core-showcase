<p align="right">
  <strong>Español</strong> · <a href="ENGINEERING.en.md">English</a>
</p>

# Decisiones de ingeniería

[← Portada](../README.md) · [Índice de documentación](README.md)

PokeChampions Core combina organización por funcionalidades, capas y puertos/adaptadores en componentes clave. Sus prioridades son la reproducibilidad, la responsabilidad explícita sobre el estado y la evidencia ligada a un alcance concreto. Estas fronteras no convierten toda la app en un sistema hexagonal puro ni independiente de Flutter. Consulta [Arquitectura](ARCHITECTURE.md) y [Ficha técnica](TECHNICAL_OVERVIEW.md).

## Contratos tipados

Las interfaces de las funcionalidades entregan peticiones tipadas a servicios compartidos y reciben resultados tipados. Esto reduce el riesgo de que varias pantallas interpreten una misma mecánica de manera diferente. Versus normal, EV Lab, 1HITKO y los flujos avanzados reutilizan la base mecánica donde coinciden sus alcances.

## Reglas puras y deterministas

Las reglas que pueden expresarse sin dependencias de interfaz o almacenamiento se mantienen puras y deterministas. Esto facilita campañas extensas de comparación y pruebas de regresión separadas del renderizado.

## Migración del almacenamiento

El estado del usuario se trasladó hacia una autoridad SQLite compartida conservando los datos anteriores. La migración se trata como un problema de corrección: se retienen originales y se bloquean estados incoherentes en lugar de reescribirlos silenciosamente.

## Estado, tareas y ciclo de vida

Los controladores coordinan estado visible y operaciones asíncronas. Se revisan cancelación, cierre de controladores, workers, listeners y responsabilidad sobre recursos para que una tarea terminada en segundo plano no actualice un consumidor destruido. El servicio de búsqueda de 1HITKO dispone de un worker aislado y comprueba que el trabajo siga vigente antes de publicar progreso o resultados; eso no implica que cada cálculo use un isolate.

## Localización como funcionalidad

Los ocho paquetes de idioma se tratan como unidades completas. Una sustitución silenciosa por otro idioma no se utiliza para ocultar contenido curado ausente. Traducción, tipografía y terminología tienen contratos propios de validación.

## Importaciones reproducibles

La aplicación no obtiene datos externos en directo para cada cálculo. Las herramientas de desarrollo fijan revisiones, comprueban huellas cuando corresponde, generan artefactos deterministas y mantienen su procedencia separada de los datos consumidos en ejecución.

## Tratamiento de fallos

> Una limitación visible es preferible a una respuesta plausible pero no verificada.

Si la evidencia no resuelve con seguridad una interacción de Champions, debe mostrarse contexto insuficiente, conservarse un bloqueo documentado o exigirse una excepción explícita respaldada por evidencia.

## Disciplina de alcance

Que una referencia externa contenga suficientes reglas para simular turnos no amplía automáticamente el producto. Las mecánicas se incorporan para responder preguntas de preparación, análisis y revisión, no para construir un simulador autónomo completo.
