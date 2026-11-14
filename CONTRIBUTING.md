<p align="right">
  <strong>Español</strong> · <a href="CONTRIBUTING.en.md">English</a>
</p>

# Participación y validación del showcase

[← Portada](README.md) · [Documentación](docs/README.md)

PokeChampions Core se desarrolla en un repositorio de producción privado. Este espacio público documenta producto, arquitectura, validación y trabajo de ingeniería seleccionado.

Puedes abrir una incidencia para aportar sugerencias, fallos reproducibles de la aplicación, correcciones de documentación, feedback de accesibilidad, correcciones de datos con referencias verificables o propuestas para el escaparate. La aplicación se descarga desde [Google Play](https://play.google.com/store/apps/details?id=com.pokechampionscore.external); este repositorio aloja su presentación y documentación.

No adjuntes recursos Pokémon protegidos, material filtrado, claves de firma, datasets privados ni código de otros proyectos sin una licencia compatible.

## Informes de fallos

Usa el [formulario de fallo](https://github.com/DiegoARRFRA/pokechampions-core-showcase/issues/new?template=bug_report.yml) o el [formulario de sugerencia](https://github.com/DiegoARRFRA/pokechampions-core-showcase/issues/new?template=feature_request.yml). Los campos están en español e inglés y puedes responder en tu idioma. Las incidencias son públicas; evita datos personales en textos y capturas.

Incluye versión, dispositivo/sistema operativo, idioma y tema cuando sean relevantes, pasos exactos, resultado esperado y real, y si el fallo persiste tras reiniciar.

## Correcciones de mecánicas o datos

Aporta una fuente reproducible para afirmaciones sobre mecánicas, legalidad o regulación de Pokémon Champions. El proyecto prefiere un estado desconocido explícito a adoptar silenciosamente una regla no verificada.

## Documentación y traducciones

Las PR públicas pueden mejorar documentación, navegación y utilidades del showcase; no dan acceso a la implementación. No adjuntes auditorías privadas ni grabaciones originales con datos personales.

La portada está disponible en ocho idiomas: `README.md` (español) y `README.<idioma>.md` con los sufijos `en`, `fr`, `de`, `it`, `pt`, `ja` y `ko`. Todas las portadas incluyen un selector recíproco con las ocho versiones. La galería también tiene ocho versiones: usa el mismo esquema de sufijos en `docs/GALLERY`, con selector recíproco y textos alternativos traducidos. Actualiza las ocho galerías cuando cambies sus hechos, navegación o descripciones. La documentación técnica detallada conserva sus versiones en español (`NOMBRE.md`) e inglés (`NOMBRE.en.md`); los enlaces técnicos desde las otras portadas y galerías indican que abren contenido en inglés. El [índice de documentación](docs/README.md) reúne las portadas y las parejas técnicas.

Cuando cambies hechos, límites o navegación de la portada, actualiza las ocho versiones; para el resto de documentos, actualiza su pareja español/inglés y cualquier traducción adicional existente. Mantén el selector al principio y enlaza contenido del mismo idioma cuando esté disponible; en caso contrario, indica el idioma de destino. No traduzcas identificadores técnicos, nombres de paquetes, comandos, hashes o rutas de archivos; sí sus explicaciones y textos alternativos.

## Contribuciones al código

El código de producción es privado y no está disponible para PR públicas. Se aceptan sugerencias e incidencias sin que ello implique un compromiso de liberar componentes.

## Validación del showcase

Desde la raíz, con PowerShell 5.1 o posterior, ejecuta [la utilidad de verificación](tools/verify-showcase.ps1). El permiso de ejecución se limita a ese proceso y no cambia la configuración permanente del equipo.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

La comprobación predeterminada requiere los **23 archivos multimedia**: ocho capturas, un logo transparente, siete miniaturas y siete MP4 históricos. Revisa enlaces locales Markdown/HTML y anclas de encabezados, selectores recíprocos de las portadas y galerías, textos alternativos de imágenes, inventario esperado, tamaños y SHA-256. Usa `ffprobe` y `ffmpeg` instalados localmente para dimensiones, duración, número de frames, ausencia de audio y decodificación completa. No instala programas, consulta la red ni modifica archivos.

Para trabajo de texto sin multimedia, usa `-DocumentsOnly`: excluye explícitamente los enlaces a los 23 binarios esperados. Ese modo no valida multimedia ni autoriza una integración; otros destinos ausentes siguen siendo errores. Ningún modo verifica URLs externas, renderiza GitHub, demuestra procedencia o sustituye la revisión de información privada.

Antes de integrar, ejecuta la comprobación completa, revisa portadas y galerías en GitHub, compara el manifiesto de cualquier paquete recibido y examina el diff. Revisa también el selector y la equivalencia de cada pareja documental: el chequeo automatizado de selectores cubre todos los pares Markdown. No cambies hashes para ocultar discrepancias y conserva en borrador el trabajo multimedia incompleto.

Una actualización visual puede cambiar legítimamente los hashes al sustituir vídeos o capturas: documenta el origen y el recorte nuevos, valida los archivos y actualiza el manifiesto con sus valores reales. Mantén identificados los archivos anteriores; no los presentes como evidencia de la nueva versión.

## Validación de integridad sin decodificación

`-IntegrityOnly` comprueba enlaces locales, parejas de idiomas y todos los archivos multimedia contra el manifiesto fijado (tamaño y SHA-256), sin requerir FFmpeg. No decodifica multimedia ni certifica el renderizado. Utiliza este modo solo con un paquete cuyos bytes exactos ya hayan superado las comprobaciones de decodificación. El modo predeterminado sigue decodificando con `ffmpeg` y `ffprobe` locales. No debe confundirse con `-DocumentsOnly`, que excluye los destinos binarios esperados.

La estructura actual limita la galería a ocho capturas principales, usa tres en portada más el logo y enlaza miniaturas ligeras a vídeos históricos. El verificador también rechaza binarios de app, bases de datos, fuentes y material de firma habituales. Esta lista no sustituye la revisión manual de secretos, datos personales o afirmaciones engañosas.

## Comprobación automática

GitHub Actions ejecuta el verificador completo en cada pull request y actualización de la rama principal: documentos, navegación entre los ocho idiomas y los 23 archivos multimedia. Usa permisos de lectura, sin credenciales persistentes ni secretos. La revisión del contenido y las traducciones sigue siendo manual.
