<p align="right">
  <strong>Español</strong> · <a href="ARCHITECTURE.en.md">English</a>
</p>

# Arquitectura

[← Portada](../README.md) · [Índice de documentación](README.md)

PokeChampions Core utiliza una arquitectura modular organizada por funcionalidades, con separación por capas y puertos y adaptadores en componentes clave. Presentación, coordinación de la aplicación, reglas de dominio, persistencia y catálogos locales versionados tienen responsabilidades distintas. No se afirma que toda la aplicación sea hexagonal pura ni independiente de Flutter.

## Organización y flujo

```text
Funcionalidades de la aplicación
  ├─ Presentación y controladores
  ├─ Coordinación y contratos tipados
  └─ Adaptadores y repositorios donde corresponde

Núcleo compartido
  ├─ Modelos y reglas de dominio
  ├─ Catálogos locales versionados
  └─ Acceso a persistencia y preferencias

Cálculo: interfaz → petición tipada → reglas / catálogos → resultado → interfaz
Guardado: interfaz → repositorio → Drift / SQLite
```

El esquema resume responsabilidades, no todas las dependencias del proyecto. Las funcionalidades reutilizan capas compartidas cuando procede; no todas tienen una estructura de carpetas idéntica. Los puertos y adaptadores aíslan fronteras seleccionadas, especialmente el cálculo y el audio. Las pantallas de cálculo entregan peticiones tipadas y representan respuestas, en lugar de reconstruir mecánicas a partir de etiquetas o descripciones.

## Responsabilidades principales

### Lógica de dominio

Las reglas de daño, legalidad y contexto se aíslan de los widgets en la medida práctica. Versus normal, EV Lab, 1HITKO y los escenarios avanzados reutilizan reglas o fronteras de cálculo en los ámbitos que coinciden, sin interpretar cada mecánica de nuevo en cada pantalla.

### Composición y adaptadores

La composición entrega a los controladores las implementaciones que necesitan. Un contrato de cálculo separa al consumidor del motor concreto; un contrato de reproducción separa el control de audio de la biblioteca de reproducción. Son aplicaciones concretas de puertos y adaptadores, no una certificación de todas las dependencias de la aplicación.

### Persistencia

Los datos del usuario se conservan localmente mediante Drift/SQLite. Equipos, historial y otros estados persistidos se separan de los catálogos generados y de las preferencias ligeras. La migración prioriza la conservación: los originales no se descartan silenciosamente al cambiar la autoridad de almacenamiento.

### Datos empaquetados

Los catálogos se leen de recursos distribuidos con la app. Investigación, generación y validación externas se realizan durante el desarrollo. Así, una web o referencia externa no altera silenciosamente las reglas de una versión ya instalada.

## Fronteras del producto

**Batalla** representa un estado explícito 2 contra 2. **Versus** resuelve daño para un escenario 1 contra 1. **1HITKO** busca candidatos a KO bajo condiciones declaradas. **Entradas** practica elecciones iniciales. **HISTÓRICO** almacena y analiza registros locales. Ninguno convierte el producto en un simulador autónomo de partidas completas.

## Herramientas de desarrollo y publicación

Importadores, generadores, arneses de auditoría y pruebas internas pertenecen al proyecto de producción. Preparan artefactos a partir de referencias fijadas, pero no se distribuyen en este escaparate.

El objetivo público es mostrar arquitectura, metodología y resultados seleccionados sin revelar implementación, pipeline completo ni corpus de pruebas. La documentación pública y las reglas de GitHub no garantizan protección contra la copia.

[Ficha técnica y funcionamiento](TECHNICAL_OVERVIEW.md) · [Decisiones de ingeniería](ENGINEERING.md)
