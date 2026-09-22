<p align="right">
  <strong>Español</strong> · <a href="CONTRIBUTING.en.md">English</a>
</p>

# Participación y validación del showcase

[← Portada](README.md) · [Documentación](docs/README.md)

PokeChampions Core se desarrolla en un repositorio de producción privado. Este espacio público documenta producto, arquitectura, validación y trabajo de ingeniería seleccionado.

Puedes abrir una incidencia para aportar sugerencias, fallos reproducibles en una build que estés autorizado a probar, correcciones de documentación, feedback de accesibilidad, correcciones de datos con referencias verificables o propuestas para el escaparate. Este repositorio no ofrece una descarga pública de la aplicación.

No adjuntes recursos Pokémon protegidos, material filtrado, claves de firma, datasets privados ni código de otros proyectos sin una licencia compatible.

## Informes de fallos

Incluye versión, dispositivo/sistema operativo, idioma y tema cuando sean relevantes, pasos exactos, resultado esperado y real, y si el fallo persiste tras reiniciar.

## Correcciones de mecánicas o datos

Aporta una fuente reproducible para afirmaciones sobre mecánicas, legalidad o regulación de Pokémon Champions. El proyecto prefiere un estado desconocido explícito a adoptar silenciosamente una regla no verificada.

## Documentación y traducciones

Las PR públicas pueden mejorar documentación, navegación y utilidades del showcase; no dan acceso a la implementación. No adjuntes auditorías privadas ni grabaciones originales con datos personales.

Cada documento usa `NOMBRE.md` para español y `NOMBRE.en.md` para inglés, con selector recíproco al principio y enlaces al contenido del mismo idioma. Actualiza ambos cuando cambies hechos, límites o navegación. El [índice bilingüe](docs/README.md) reúne las parejas. No traduzcas identificadores técnicos, nombres de paquetes, comandos, hashes o rutas de archivos; sí sus explicaciones y textos alternativos.

## Contribuciones al código

El código de producción es privado y no está disponible para PR públicas. Se aceptan sugerencias e incidencias sin que ello implique un compromiso de liberar componentes.

## Validación del showcase

Desde la raíz, con PowerShell 5.1 o posterior, ejecuta [la utilidad de verificación](tools/verify-showcase.ps1). El permiso de ejecución se limita a ese proceso y no cambia la configuración permanente del equipo.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

La comprobación predeterminada requiere los 14 archivos multimedia. Revisa enlaces locales Markdown/HTML y anclas de encabezados, selectores recíprocos de las portadas y galerías, textos alternativos de imágenes, inventario esperado, tamaños y SHA-256 contra el manifiesto existente. Usa `ffprobe` y `ffmpeg` instalados localmente para dimensiones, duración, número de frames, ausencia de audio y decodificación completa. No instala programas, consulta la red ni modifica archivos.

Para trabajo de texto sin multimedia, usa `-DocumentsOnly`: excluye explícitamente los enlaces a los 14 binarios esperados. Ese modo no valida multimedia ni autoriza una integración; otros destinos ausentes siguen siendo errores. Ningún modo verifica URLs externas, renderiza GitHub, demuestra procedencia o sustituye la revisión de información privada.

Antes de integrar, ejecuta la comprobación completa, revisa portadas y galerías en GitHub, compara el manifiesto de cualquier paquete recibido y examina el diff. Revisa también el selector y la equivalencia de cada pareja documental: el chequeo automatizado de selectores actual se centra en portadas y galerías. No cambies hashes para ocultar discrepancias y conserva en borrador el trabajo multimedia incompleto.
