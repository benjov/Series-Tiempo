# Análisis de Series de Tiempo

Notas de clase para los cursos **Análisis de Series de Tiempo** (Facultad de Economía, UNAM) y **Econometría III** (Tecnológico de Monterrey). Orientadas a estudiantes de licenciatura con conocimientos previos de econometría y probabilidad.

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

```r
bookdown::render_book("index.Rmd")          # HTML (gitbook)
bookdown::render_book("index.Rmd", "bookdown::pdf_book")  # PDF
```

## Autores

- Benjamín Oliva — benjov@ciencias.unam.mx
- Omar Alfaro Rivera — omarxalpha@gmail.com
- Emiliano Pérez Caullieres
- Luis Gerardo Ruíz

Para comentarios o correcciones escribir a benjov@ciencias.unam.mx.
