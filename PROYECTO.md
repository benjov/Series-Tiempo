# Proyecto: Notas de Análisis de Series de Tiempo

## Descripción general

Material didáctico en español para la materia **Análisis de Series de Tiempo** de la Facultad de Economía de la UNAM (y Econometría II del Tec de Monterrey). Orientado principalmente a nivel licenciatura.

Formatos de entrega:
- **Sitio web** (ya en línea): https://benjov.github.io/Series-Tiempo/index.html
- **PDF** para envío a la **Editorial de la UNAM** (fecha objetivo: 1 de diciembre de 2026)

Tecnología: R + bookdown (Rmd) → HTML (GitBook) + PDF (XeLaTeX)

---

## Autores

| Autor | Correo |
|-------|--------|
| Benjamín Oliva (coordinador) | benjov@ciencias.unam.mx |
| Jaime Vázquez Alamilla | jaime.vazquez@ciencias.unam.mx |
| Omar Alfaro Rivera | omarxalpha@gmail.com |
| Emiliano Pérez Caullieres | emilianoprzcls@gmail.com |
| Luis Gerardo Ruíz | gerardorg2203@gmail.com |

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

## Resumen de la revisión técnica de julio 2026 (sesiones 2026-07-08/09)

Revisión de apoyo para el envío a pares (Fac. Ciencias, UNAM). Estado al cierre: **ambos formatos compilan sin errores y sin defectos mecánicos conocidos**. Detalle por sesión en las subsecciones de abajo.

| Área | Antes | Después |
|------|-------|---------|
| Contenido perdido en HTML (bloques LaTeX crudos) | Definiciones clave ausentes del sitio (I(d), Granger, hipótesis panel, SETAR, filtro HP) | Convertidos a Markdown; todo visible |
| Citas | Prosa plana ("Sims (1980)"), bibliografía solo vía `nocite` | 46+ citas formales `Autor [-@key]` enlazadas; 68 refs consolidadas en Bibliografía (`split_bib: false`); +14 entradas en `book.bib` |
| Errores de contenido | "Greta, Ljung y Box"; ξ_t "ruido blanco" en KPSS; captions ACF/PACF; T=234 vs 282; captions fig74/75 cruzados | Corregidos |
| Reproducibilidad cap. 06 | Datos vivos de Yahoo, conclusiones fijas, caché obsoleto | Snapshot `BD/BTC_USD.RData` (corte 2026-07-07); óptimo homologado GARCH(3,1); descarga viva comentada |
| Metodología cap. 06 | Selección GARCH sobre `ehatsq`, media (0,0); pronósticos con espec. distinta | Selección homologada (`logret`, media AR(2)); pronósticos reutilizan el modelo óptimo |
| Consistencia editorial | "autoregresivo"/"autorregresivo" mezclados; salidas crudas de R; jerarquías rotas; "Figure/Table" en HTML | Unificado; salidas redundantes fuera; "Figura/Cuadro" |
| Autores | Faltaba J. Vázquez Alamilla en portada web; desborde en portada PDF | 5 autores en ambos formatos, portada PDF en 3 líneas |
| PDF: código/tablas fuera de margen | 390 `Overfull \hbox` (hasta 3.4 cm); math escapado en tablas (`\$LTC\_t\$` literal) | 7 residuales ≤ 7 mm; fórmulas renderizadas (`fvextra` + `width=70` + `escape=FALSE`) |

**Confirmado 2026-07-09**: el curso del Tec es "Econometría II" (unificado en README y este documento). La portada web (instituciones, autores, versión) ahora es exclusiva del HTML — el PDF usa solo su portada LaTeX.

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

### Corrección de contenido perdido en HTML (2026-07-08)

- [x] ~~Bloques de LaTeX crudo (`\begin{itemize}`, `\begin{enumerate}`, `\textbf{}` en prosa) descartados por pandoc en la salida HTML: el sitio web omitía la definición de proceso integrado I(d) y los valores críticos KPSS (cap. 04), las definiciones de causalidad de Granger (cap. 05), las hipótesis alternativas de raíz unitaria en panel, condiciones de estacionariedad SETAR y procedimiento empírico (cap. 07), y las listas de series/λ del filtro HP (cap. 03)~~ ✓ Convertidos a listas Markdown y `**negritas**` (9 bloques + 3 `\textbf`); en cap. 07 se tradujeron al español ítems que estaban en inglés ("Dummy variable...", "Pend: ..."). Los bloques `{=tex}` restantes (caps. 02, 03) son solo ecuaciones y sí se renderizan vía MathJax — no requieren cambio. Los `\textbf` dentro de `\text{}` matemático (cap. 05) también están bien.

### Citas formales y correcciones de contenido (2026-07-08, sesión 2)

- [x] ~~Citas en prosa plana en vez de `@key`~~ ✓ Migradas a patrón `Autor [-@key]` (conserva el "y" español; el año queda enlazado) en caps. 01, 03, 05, 06, 07. Agregadas 13 entradas a `book.bib`: guerrero2014, fransesvandijk2000, kirchgassner2013, taylor1986, stock1987, shresthabhatta2018, stamantvannorden1997, marcetravn2004, choi2001, roodman2009, grunfeld1958, dahlbergjohansson2000, imf2020. **Verificar datos editoriales de guerrero2014 (¿Just in Time Press, 3a ed. 2014?) y kirchgassner2013 (¿2012 o 2013?)** — la intro citaba "Franses y van Dijk (2003)" y "Kirchgässner et al. (2012)"; se usaron 1a ed. 2000 (CUP) y 2a ed. 2013 (Springer) respectivamente.
- [x] ~~"Greta, Ljung y Box (1978)" en 03:449~~ ✓ Corregido: Greta es el nombre de pila de Ljung.
- [x] ~~Cap. 04: $\xi_t$ como "ruido blanco" en KPSS (es caminata aleatoria); "sólo podría ser estacionario si $t=1$"; T=234 vs 282 (real: T=282, p=5); captions fig74/fig75 cruzados; fig73–75 sin referenciar~~ ✓ Todo corregido.
- [x] ~~Cap. 06: captions fig105/107 decían "autocorrelación parcial" (el código usa `acf()`); fig108/109 con captions duplicados~~ ✓ Corregidos. Nota: "GARCH(2,4)" vs `garchOrder=c(4,2)` NO es error — en `rugarch`, `garchOrder = c(q, p)`.
- [x] ~~Cap. 07: restos en inglés "Consider Levin et al. (2002)" / "Consider Im-Pesaran-Shin Unit-Root Test (2003)"~~ ✓ Traducidos con cita formal.
- [x] ~~Typo "Autorregresicos" en título de sección 05:236~~ ✓ Corregido.

### Barrido editorial (2026-07-08, sesión 3)

- [x] ~~"autoregresivo" con una sola r (~23 usos)~~ ✓ Unificado a "autorregresivo" (RAE) en caps. 01, 02, 03, 05, 06, 07; se conservó el inglés "Autoregressive" donde corresponde.
- [x] ~~"homoscedasticidad"/"homocedasticidad" mezclados~~ ✓ Unificado a "homocedasticidad" (06).
- [x] ~~Salida cruda de R redundante~~ ✓ Cap. 04: eliminados 18 `summary()` que duplicaban los cuadros kable. Cap. 06: eliminados `auto.arima(logret)` (contradecía la media AR(2) fija del texto con datos vivos) y los 3 `ugarchboot` (salida nunca referenciada; además ahorran ~300k simulaciones bootstrap por build).
- [x] ~~Jerarquía de secciones~~ ✓ Cap. 03: "Motivación" y "Filtro Hodrick-Prescott" ahora `###` bajo "Desestacionalización y filtrado de Series"; St-Amant y van Norden `####`. Cap. 06: "Prueba de normalidad" ahora `###` bajo Motivación, con oración introductoria en lugar del H0 suelto.
- [x] ~~Tono informal / imprecisiones~~ ✓ "Acá una respuesta." reescrito; "valor de la acción ajustado" → "precio ajustado del activo" (Bitcoin no es acción); "de esta clase" → "de este capítulo"; frase confusa de causalidad en 05:26 reescrita.
- [x] ~~`ggsave()` escribía 5 PNGs en la raíz del repo~~ ✓ Eliminadas las 5 llamadas (cap. 03) y borrados los PNGs huérfanos (estaban git-ignored).
- [x] ~~HTML con "Figure"/"Table" en inglés~~ ✓ `_bookdown.yml`: agregado `language: label: fig: "Figura ", tab: "Cuadro "` (el preamble.tex solo cubría el PDF).

### Snapshot de Bitcoin congelado (2026-07-08, sesión 4)

- [x] ~~Cap. 06 dependía de datos vivos de Yahoo con conclusiones fijas en el texto~~ ✓ Serie BTC-USD congelada en `BD/BTC_USD.RData` (2014-09-17 a 2026-07-07, n=4312). El código de descarga viva quedó **comentado** en el chunk `Data_ARCH` para quien quiera replicar con datos actualizados. Texto actualizado con la fecha de corte.
- [x] ~~Óptimo "GARCH(2,4)" fijado en texto no coincidía con los datos~~ ✓ Recalculado con el snapshot: el óptimo es **GARCH(3,2)** (`garchOrder = c(2, 3)`); texto, chunk y caption alineados. El cuadro anterior venía de un **caché de knitr obsoleto** (`criterios` tiene `cache=TRUE` y no se invalida al cambiar los datos) — caché purgado; si se cambia el snapshot hay que purgar `_bookdown_files/*_cache/*/criterios*`.
- [x] ~~`source("Lag_Opt_GARCH.R")` vs archivo `lag_opt_GARCH.R`~~ ✓ Alineado a minúsculas (fallaría en sistemas case-sensitive, p. ej. Linux/CI).

### Homologación metodológica cap. 06 y referencia Antón (2026-07-08, sesión 5)

- [x] ~~Selección del GARCH óptimo sobre `ehatsq` con media (0,0) vs estimaciones sobre `logret` con media AR(2)~~ ✓ Homologado a la especificación de las estimaciones: `Lag_Opt_GARCH()` ahora acepta argumento `arma` (default `c(0,0)`, retrocompatible) y el chunk `criterios` corre `Lag_Opt_GARCH(logret, 4, 4, arma = c(2, 0))`. Nuevo óptimo con el snapshot: **GARCH(3,1)** (`garchOrder = c(1, 3)`, AIC = −4.30017); texto, estimación y caption alineados. `ehatsq` se conserva solo en la prueba de efectos ARCH, donde sí corresponde.
- [x] ~~Pronósticos con GARCH(1,1) y media `armaOrder=c(4,2)` sin explicación~~ ✓ La sección de pronósticos ya no reajusta un modelo distinto: reutiliza `model.fit` (el GARCH(3,1) óptimo con media AR(2)); título actualizado a "Pronósticos con el modelo GARCH óptimo".
- [x] ~~Referencia "Antón (2009)" sin entrada~~ ✓ Identificada con el PDF provisto por el autor: Antón Sarabia, A. (2010), "El problema al final de la muestra en la estimación de la brecha del producto", *Economía Mexicana. Nueva Época*, XIX(1), 5–29. Alta como `anton2010` en `book.bib`; el año del texto (2009 era la fecha de aceptación) se corrige solo vía `[-@anton2010]`.

- [x] ~~Bibliografía HTML fragmentada tras introducir citas formales~~ ✓ El gitbook trae `split_bib: true` por defecto: al aparecer citas reales, movió las referencias al final de cada capítulo y dejó vacía la página "Bibliografía". Agregado `split_bib: false` en `_output.yml` para consolidarlas en la página de Bibliografía.

### Autores completos y portada PDF (2026-07-08, sesión 6)

- [x] ~~Faltaba Jaime Vázquez Alamilla en la portada web y en PROYECTO.md~~ ✓ Los 5 autores ahora aparecen en: YAML de `index.Rmd`, cuerpo de `index.Rmd` (portada web) y tabla de autores de PROYECTO.md (con correos, tomados del README).
- [x] ~~Autores se salían del margen en la portada del PDF~~ ✓ Causa: `author:` era una sola cadena → LaTeX la ponía en una celda de tabular sin salto de línea. Convertido a lista YAML (pandoc une con `\and`, que sí permite quiebre). Verificado visualmente: portada con los 5 autores en 3 líneas centradas.
- [x] ~~Verificar `guerrero2014` y `kirchgassner2013`~~ ✓ Datos confirmados por el autor: `guerrero2003` = Guerrero, V. M. (2003), *Análisis Estadístico de Series de Tiempo Económicas*, Cengage Learning Editores (llave y cita en intro actualizadas); `kirchgassner2013` enriquecido con DOI 10.1007/978-3-642-33436-8, ISBN y dirección Berlin-Heidelberg (año 2013 = copyright Springer).
- [x] ~~Verificar citas `[-@key]` en PDF con natbib~~ ✓ PDF recompilado: pandoc convierte a `\citeyearpar{}` (46 citas), incluidas anton2010/guerrero2003/kirchgassner2013; GARCH(3,1) consistente también en PDF.

### Desbordes de código y tablas en el PDF (2026-07-09, sesión 7)

- [x] ~~Código R se salía de los márgenes del PDF (390 `Overfull \hbox`)~~ ✓ Reducidos a **7**, todos ≤ 7 mm (imperceptibles). Tres capas de solución:
  1. `preamble.tex`: `fvextra` con `breaklines` para `Highlighting` (código fuente) y `verbatim` (salidas). Requirió instalar `fvextra`, `upquote` y `lineno` en TinyTeX desde el repo histórico TeX Live 2023 (`tlmgr --verify-repo=none install ... --repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final`) — el espejo por defecto tenía checksum corrupto y los espejos actuales ya van en TL2026.
  2. `index.Rmd`: `options(width = 70)` para que R envuelva sus salidas impresas.
  3. Tablas: 13 `kable` con `escape = FALSE` (antes el PDF mostraba `\$LTC\_t\$` literal en vez de fórmulas — defecto que ya estaba en el PDF publicado); `%` de encabezados escapado condicionalmente (`knitr::is_latex_output()`); en `arima_kable` (cap. 03) los rownames con guion bajo (dummies `D_Sep2017_MA`) se escapan solo para LaTeX; etiquetas de fila sin el prefijo redundante "Modelo"; `row.names = FALSE` en DiagnosVAR (mostraba columna basura "Chi-squared1..." también en HTML); ecuación M-GARCH partida en dos renglones; bloque externo del QPM a una columna.
- Verificación visual: pág. 137 (tabla DF con math renderizado + código con quiebre) y pág. 228 (chunk BTC con comentarios largos) dentro de márgenes. Ambos formatos compilan sin errores.

### Hallazgos de revisión 2026-07-08 (pendientes)

- [ ] **Nota menor**: los `[-@key]` dentro de `fig.cap` se renderizan bien en el caption visible (HTML y PDF) pero quedan literales en el atributo `alt` de la imagen — cosmético, sin impacto para el lector.
- [ ] **Nota menor**: 7 `Overfull \hbox` residuales ≤ 7 mm (tabla comparativa de pruebas del cap. 04 y 4 ecuaciones largas) — imperceptibles; atacar solo si la editorial lo exige.

---

## Tareas de revisión por capítulo (todos los capítulos)

Para cada capítulo aplicar:
- [ ] Revisión ortográfica y de estilo
- [ ] Optimización de código R (paquetes actualizados, código limpio, reproducible)
- [ ] Mejora de contenido (claridad, nivel licenciatura UNAM)
- [x] ~~Verificar referencias bibliográficas en `book.bib`~~
- [x] ~~Cuadros hardcodeados convertidos a `knitr::kable()` generados por código~~ ✓ 2026-06-18: caps. 03, 04, 05, 06 — todos los cuadros reproducibles excepto dos conceptuales en cap. 03 (`tab:foo`, `tab:AcAcp`) ✓ 2026-06-18: `book.bib` reescrito con 35 entradas (ADF, PP, KPSS, ZA, Box-Jenkins, ARCH, GARCH, VAR, Cointegración, ARDL, Kalman, HP, panel, Markov-switching, libros de texto). Creado `08-bibliografia.Rmd` para anclar sección al final del libro.

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
| Jun–Jul 2026 | ~~Corregir problemas técnicos~~ ✓ (revisión jul 2026); consultar lineamientos editorial UNAM |
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
