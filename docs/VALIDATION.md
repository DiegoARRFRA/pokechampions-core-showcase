<p align="right">
  <strong>Español</strong> · <a href="VALIDATION.en.md">English</a>
</p>

# Validación y QA

[← Portada](../README.md) · [Índice de documentación](README.md)

Las pruebas se tratan como evidencia con alcance. Un recuento correcto solo es útil cuando se vincula a una revisión, un catálogo y un límite funcional conocidos.

## Checkpoint público hasta el 14 de septiembre de 2026

La ejecución en host recogida en ese checkpoint terminó con **4.849 pruebas correctas, 0 fallos, 0 omisiones y código de salida 0**, después de una corrección focal de importación.

Corresponde al estado de la aplicación validado a mediados de septiembre de 2026. No establece que una build posterior haya superado la misma suite. Cero fallos no equivale a cobertura completa. Las comprobaciones de enlaces y archivos de este repositorio son independientes: consulta [Validación del showcase](../CONTRIBUTING.md#validación-del-showcase).

## Campañas históricas más amplias

La evidencia anterior incluye una campaña de Versus de **104.091 escenarios acotados** y una aceptación exhaustiva histórica de 1HITKO con **361 formas y 12.987 pares atacante/defensor**. También se mantienen regresiones focales de persistencia, localización, regulación, ciclo de vida y empaquetado Android, además de comprobaciones deterministas de catálogos e importaciones seleccionadas.

No deben sumarse esas cifras como una certificación universal. Una nueva regulación, participante o mecánica puede quedar fuera de una campaña anterior.

## QA física Android

Las comprobaciones en **POCO F5 con Android 15** han cubierto flujos seleccionados de instalación e identidad, navegación, persistencia al cerrar el proceso, apariencia claro/oscuro/sistema, recorridos de Versus e instalación y actualización de builds externas. También se comprobó la conservación de datos existentes entre las primeras entregas externas.

Esta evidencia física es deliberadamente más limitada que toda la matriz automatizada en host.

## Frentes con evidencia separada

La cobertura de más dispositivos, aceptación de accesibilidad/TalkBack, sesiones audibles prolongadas, rendimiento específico de plataforma y contenido de nuevas regulaciones requieren sus propias comprobaciones. No se incluyen silenciosamente en el recuento principal de aciertos.

## Por qué se conservan ejecuciones fallidas

La auditoría interna retiene ejecuciones fallidas. Una corrección posterior puede cerrar el hallazgo, pero el fallo original sigue explicando qué se descubrió y cómo evolucionó la regresión.

No se reescribe el pasado como si todo hubiera estado siempre aprobado. Las demos públicas tampoco constituyen nuevas pruebas de exactitud ni benchmarks.

[Rendimiento](PERFORMANCE.md) · [Datos y exactitud](DATA_AND_ACCURACY.md)
