# Análisis de Series de Tiempo

Notas de clase para los cursos **Análisis de Series de Tiempo** (Facultad de Economía, UNAM) y **Econometría II** (Tecnológico de Monterrey). Orientadas a estudiantes de licenciatura con conocimientos previos de econometría y probabilidad.

## Recursos

| Recurso | Enlace |
|:--------|:-------|
| Sitio web | https://benjov.github.io/Series-Tiempo/ |
| Versión PDF | https://github.com/benjov/Series-Tiempo/blob/main/docs/Notas-Series-Tiempo.pdf |

## Contenido

1. **Introducción** — Objetivos, estructura, prerrequisitos y convenciones notacionales
2. **Ecuaciones en Diferencia** — Operador de rezagos, estabilidad, procesos deterministas y estocásticos
3. **Procesos Estacionarios y Modelos Univariados** — AR, MA, ARMA, ARIMA, ARIMAX, desestacionalización, filtro HP
4. **Procesos No Estacionarios** — Raíz unitaria, pruebas DF, ADF, PP, KPSS, Zivot-Andrews
5. **Modelos Multivariados** — VAR, causalidad de Granger, cointegración, VEC, ARDL, filtro Kalman
6. **Modelos de Volatilidad** — ARCH, GARCH univariados y multivariados, VaR
7. **Datos Panel y Modelos No Lineales** — Efectos fijos/aleatorios, Panel VAR, TAR, STAR, Markov-switching

Todos los ejemplos se implementan en **R**. El código y los datos están disponibles en este repositorio.

## Compilación

Desde R o RStudio:

```r
bookdown::render_book("index.Rmd")                          # HTML (gitbook) → docs/
bookdown::render_book("index.Rmd", "bookdown::pdf_book")   # PDF → docs/Notas-Series-Tiempo.pdf
```

Desde la terminal, `Rscript` necesita saber dónde está pandoc (en macOS, el que trae RStudio):

```sh
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools
Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'
```

### Requisitos

- **Paquetes de R**: ver la sección *Software: R* del capítulo de Introducción (`install.packages(...)` con la lista completa).
- **PDF**: XeLaTeX vía TinyTeX. Se requieren los paquetes LaTeX `fvextra`, `upquote` y `lineno` (quiebre de líneas largas en bloques de código). Si TinyTeX es de una edición anterior de TeX Live y el espejo por defecto falla, instalarlos desde el repositorio histórico congelado, por ejemplo:

  ```sh
  tlmgr --verify-repo=none install fvextra upquote lineno \
    --repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final
  ```

### Reproducibilidad de los datos

- Los datos de los ejemplos están en la carpeta `BD/`.
- La serie del Bitcoin (capítulo de Volatilidad) está **congelada** en `BD/BTC_USD.RData` (Yahoo Finance, corte: 2026-07-07) para que los resultados del texto sean reproducibles. El chunk `Data_ARCH` incluye, comentado, el código para descargar datos vivos; si se actualiza el snapshot hay que **purgar el caché de knitr** del chunk de selección GARCH (`_bookdown_files/*_cache/*/criterios*`), porque `cache=TRUE` no se invalida al cambiar los datos, y revisar que las conclusiones del texto (orden GARCH óptimo) sigan siendo válidas.

## Autores

- Benjamín Oliva Vázquez — benjov@ciencias.unam.mx
- Jaime Vázquez Alamilla - jaime.vazquez@ciencias.unam.mx
- Omar Alfaro Rivera — omarxalpha@gmail.com
- Emiliano Pérez Caullieres - emilianoprzcls@gmail.com
- Luis Gerardo Ruíz - gerardorg2203@gmail.com 

Para comentarios o correcciones escribir a benjov@ciencias.unam.mx.
