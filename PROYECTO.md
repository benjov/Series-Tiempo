# Proyecto: Notas de Análisis de Series de Tiempo

## Descripción general

Material didáctico en español para la materia **Análisis de Series de Tiempo** de la Facultad de Economía de la UNAM (y Econometría III del Tec de Monterrey). Orientado principalmente a nivel licenciatura.

Formatos de entrega:
- **Sitio web** (ya en línea): https://benjov.github.io/Series-Tiempo/index.html
- **PDF** para envío a la **Editorial de la UNAM** (fecha objetivo: 1 de diciembre de 2026)

Tecnología: R + bookdown (Rmd) → HTML (GitBook) + PDF (XeLaTeX)

---

## Autores

| Autor | Correo |
|-------|--------|
| Benjamín Oliva (coordinador) | benjov@ciencias.unam.mx |
| Omar Alfaro Rivera | omarxalpha@gmail.com |
| Emiliano Pérez Caullieres | — |
| Luis Gerardo Ruíz | — |

---

## Estructura de capítulos

| Archivo | Título | Líneas | Estado |
|---------|--------|--------|--------|
| `index.Rmd` | Portada y contexto | ~60 | ✓ Revisado 2026-06-18: título → "Análisis de Series de Tiempo", fecha dinámica mejorada, sección "Presentación" con lista de temas, tabla de recursos, descripción SEO mejorada |
| `01-intro.Rmd` | Introducción | ~100 | ✓ Redactado 2026-06-18 (sobre notas, estructura, prerrequisitos, R, notación) |
| `02-Elementos_Eq_Diff.Rmd` | Introducción al Análisis de ST y Ecuaciones en Diferencia | 949 | ✓ Revisado 2026-06-18: errores matemáticos (g1 duplicado, exponentes), encoding en comentarios R, typos de texto; sección de cierre que conecta con cap. 3 |
| `03-Modelos_STE.Rmd` | Procesos Estacionarios y Modelos Univariados | ~2270 | ✓ Revisado 2026-06-18: error conceptual (ruido blanco ≠ caminata aleatoria), error math MA(1) covarianza (-b₁² → -b₁), notación Yule-Walker (α→a), 12+ typos corregidos, sección de resumen añadida |
| `04-No_Estacionarios.Rmd` | Procesos No Estacionarios Univariados | 577 | ✓ Expandido 2026-06-18: simulación caminata aleatoria, prueba Zivot-Andrews, resumen y guía de decisión; typos corregidos |
| `05-VAR.Rmd` | VAR, Cointegración, ARDL, Kalman | ~2175 | ✓ Revisado 2026-06-18: typos (instantánea, círculo, Retomando, algoritmo×2, sí importa), headers diagnósticos reclasificados, sección resumen añadida |
| `06-Modelos_Volatilidad.Rmd` | Modelos ARCH/GARCH univariados y multivariados | ~670 | ✓ Revisado 2026-06-18: error en espec. ARCH(1) (h_{t-i}→U²_{t-1}), notas de autor eliminadas, typos, título en inglés, \label→(\#eq:), jerarquía de secciones, resumen añadido |
| `07-Datos_Panel.Rmd` | Datos Panel, Panel VAR y Modelos No Lineales | ~960 | ✓ Revisado 2026-06-18: ~20 etiquetas en inglés traducidas, error hipótesis nula→alternativa, typos (régimanes, acurdo, Evluar, impluso, Regímen, doble ==), sección cointegración expandida (era [PENDIENTE]), resumen añadido |

---

## Temas pendientes de agregar (nuevos capítulos o secciones)

- [ ] **Modelos de cambio de régimen (Markov-switching)** — listado en la intro como tema 8, sin capítulo
- [ ] **Series de tiempo con datos de alta frecuencia** — datos financieros intraday
- [ ] **Desestacionalización ampliada** — X-13ARIMA-SEATS, métodos del Census Bureau
- [ ] *(ML/redes neuronales omitido por ahora)*

---

## Problemas técnicos identificados

- [x] ~~`_bookdown.yml`: `chapter_name: "Chapter "` → debe ser `"Capítulo "` (está en inglés)~~ ✓ Corregido 2026-06-18
- [x] ~~`_output.yml`: Tiene texto del demo de bookdown: "A Minimal Book Example" y URL de `rstudio/bookdown-demo`~~ ✓ Corregido 2026-06-18 (título, enlace al repo real y URL de edición)
- [x] ~~`01-intro.Rmd`: Typo "univaraidos"~~ ✓ Corregido 2026-06-18
- [x] ~~`01-intro.Rmd`: Capítulo demasiado corto~~ ✓ Reescrito 2026-06-18 con 6 secciones: sobre las notas, estructura del libro, prerrequisitos, R, convenciones notacionales
- [x] ~~Capítulos sin etiqueta de referencia cruzada~~ ✓ Agregado `{#cap-xxx}` a los 6 capítulos 2026-06-18
- [x] ~~`05-VAR.Rmd`: Tenía YAML `output: pdf_document` inválido para bookdown~~ ✓ Eliminado 2026-06-18
- [x] ~~`index.Rmd`: La fecha usa `r Sys.Date()`~~ ✓ Corregido 2026-06-18: fecha dinámica con formato "Mes de Año" + etiqueta estática "Versión: Junio 2026"
- [x] ~~`_publish.R`: Script demo del template~~ ✓ Eliminado 2026-06-18
- [x] ~~`_book/`: Directorio de artefactos de build antiguos~~ ✓ Eliminado 2026-06-18

### Correcciones de compilación PDF/HTML (2026-06-18, sesión 2)

- [x] ~~`05-VAR.Rmd`: `**texto**` y `#### Encabezados` dentro de chunks R → error `unexpected '^'`~~ ✓ Convertidos a comentarios R
- [x] ~~`02-Elementos_Eq_Diff.Rmd`: Labels con doble guión bajo `_p_` en ecuaciones → LaTeX interpretaba como cursiva, partiendo el label~~ ✓ Labels sin referencias eliminados
- [x] ~~`04-No_Estacionarios.Rmd`: Chunk `fig_sim_ur` con `_sim_` → mismo problema de cursiva~~ ✓ Renombrado `fig-sim-ur`
- [x] ~~`06-Modelos_Volatilidad.Rmd`: Chunk `GARCH_0_1` con `_0_` → mismo problema~~ ✓ Renombrado `GARCH-0-1`
- [x] ~~`lag_opt_GARCH.R`: `ugarchfit()` fallaba con datos en vivo de Bitcoin~~ ✓ `tryCatch` + `solver="hybrid"` + `cache=TRUE`
- [x] ~~PDF: Fecha de portada en inglés ("June de 2026")~~ ✓ Array de meses en español en `index.Rmd`
- [x] ~~PDF: "Contents", "Chapter", "Figure", "Table", "Bibliography" en inglés~~ ✓ `\renewcommand` en `preamble.tex`
- [x] ~~PDF: Número de página pegado al título del capítulo en encabezados~~ ✓ `fancyhdr` en `preamble.tex`
- [x] ~~PDF: Bibliografía con solo una entrada (R Core Team)~~ ✓ `\nocite{*}` en `preamble.tex`
- [x] ~~HTML: Bibliografía vacía~~ ✓ `nocite: '@*'` en YAML de `index.Rmd`
- [x] ~~`docs/`: 25 HTML obsoletos de builds anteriores (ago-sep 2025)~~ ✓ Eliminados; solo 10 archivos actuales
- [x] ~~`.gitignore`: Artefactos de build, `.claude/`, PNGs temporales no ignorados~~ ✓ Actualizado

---

## Tareas de revisión por capítulo (todos los capítulos)

Para cada capítulo aplicar:
- [ ] Revisión ortográfica y de estilo
- [ ] Optimización de código R (paquetes actualizados, código limpio, reproducible)
- [ ] Mejora de contenido (claridad, nivel licenciatura UNAM)
- [x] ~~Verificar referencias bibliográficas en `book.bib`~~ ✓ 2026-06-18: `book.bib` reescrito con 35 entradas (ADF, PP, KPSS, ZA, Box-Jenkins, ARCH, GARCH, VAR, Cointegración, ARDL, Kalman, HP, panel, Markov-switching, libros de texto). Creado `08-bibliografia.Rmd` para anclar sección al final del libro.

---

## Pendientes editoriales UNAM

- [ ] Consultar lineamientos formales de la Editorial de la UNAM (formato, extensión mínima, derechos de autor, estructura requerida)
- [ ] Revisar si se requiere LaTeX puro o si bookdown/PDF es aceptable
- [ ] Definir ISBN, derechos de autor, reconocimientos
- [ ] Verificar política sobre código abierto y repositorio GitHub

---

## Roadmap hacia diciembre 2026

| Mes | Objetivo |
|-----|----------|
| Jun–Jul 2026 | Corregir problemas técnicos; consultar lineamientos editorial UNAM |
| Jul–Ago 2026 | Revisar caps. 01, 04 (los más cortos/incompletos); agregar modelos no lineales |
| Sep 2026 | Revisar caps. 02, 03 (más largos); desestacionalización y alta frecuencia |
| Oct 2026 | Revisar caps. 05, 06, 07; optimización de código R |
| Nov 2026 | Revisión final de ortografía, formato PDF, bibliografía |
| 1 Dic 2026 | **Envío a Editorial UNAM** |

---

## Notas técnicas del proyecto

- Repositorio: https://github.com/benjov/Series-Tiempo
- Rama principal: `main`
- GitHub Pages: rama `main`, carpeta `docs/`
- PDF generado: `docs/Notas-Series-Tiempo.pdf`
- Datos de ejemplos: carpeta `BD/`
- Scripts auxiliares R: `arroots.R`, `maroots.R`, `plot.armaroots.R`, `Caminata.R`, etc.
- Para compilar: `bookdown::render_book("index.Rmd")` o usar `_build.sh`
