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
| `index.Rmd` | Portada y contexto | 53 | Funcional, revisar |
| `01-intro.Rmd` | Introducción | 26 | **Problema**: usado como carátula, necesita contenido real |
| `02-Elementos_Eq_Diff.Rmd` | Elementos de Ecuaciones en Diferencia | 921 | En revisión |
| `03-Modelos_STE.Rmd` | Modelos Estacionarios (AR, MA, ARMA, ARIMA, ARIMAX) | 2245 | En revisión |
| `04-No_Estacionarios.Rmd` | Procesos No Estacionarios y Pruebas de Raíz Unitaria | 480 | **Corto**, necesita expansión |
| `05-VAR.Rmd` | VAR, Cointegración, ARDL | 2156 | En revisión |
| `06-Modelos_Volatilidad.Rmd` | Modelos ARCH/GARCH univariados y multivariados | 647 | En revisión |
| `07-Datos_Panel.Rmd` | Datos Panel, Panel VAR y Modelos No Lineales | 926 | En revisión, modelos no lineales incompletos |

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
- [ ] `01-intro.Rmd`: Capítulo demasiado corto (26 líneas); necesita redacción como introducción real con motivación y estructura del libro
- [ ] `index.Rmd`: La fecha usa `r Sys.Date()` — para la versión PDF editorial conviene fijar una fecha de publicación
- [x] ~~`_publish.R`: Script demo del template~~ ✓ Eliminado 2026-06-18
- [x] ~~`_book/`: Directorio de artefactos de build antiguos~~ ✓ Eliminado 2026-06-18

---

## Tareas de revisión por capítulo (todos los capítulos)

Para cada capítulo aplicar:
- [ ] Revisión ortográfica y de estilo
- [ ] Optimización de código R (paquetes actualizados, código limpio, reproducible)
- [ ] Mejora de contenido (claridad, nivel licenciatura UNAM)
- [ ] Verificar que las referencias bibliográficas estén correctas en `book.bib`

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
