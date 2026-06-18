# Funcion para determinar los rezagos OPTIMOS de un GARCH:
Lag_Opt_GARCH <- function(X_t, q_max, p_max){

  library(rugarch)
  # q_max: Rezagos maximos a evaluar del componente ARCH
  # p_max: Rezagos maximos a evaluar del componente GARCH
  # X_t: Serie de Tiempo modelada

  Criterio_AIC <- matrix(rep(0, 4 * (q_max * p_max)), ncol = 4)
  colnames(Criterio_AIC) <- c("q", "p", "AIC", "Optimo")
  grupo <- 1

  for(i in 1:p_max){
    for(j in 1:q_max){
      Criterio_AIC[grupo, 1] <- i
      Criterio_AIC[grupo, 2] <- j

      model.spec <- ugarchspec(
        variance.model = list(model = "sGARCH", garchOrder = c(i, j)),
        mean.model     = list(armaOrder = c(0, 0)),
        distribution.model = "std"
      )

      # tryCatch evita que un fallo de convergencia detenga el loop
      aic_val <- tryCatch({
        model <- ugarchfit(spec = model.spec, data = X_t, solver = "hybrid")
        infocriteria(model)[1]
      }, error = function(e) NA_real_)

      Criterio_AIC[grupo, 3] <- aic_val
      grupo <- grupo + 1
    }
  }

  Optimo <- min(Criterio_AIC[1:(p_max * q_max), 3], na.rm = TRUE)
  for(i in 1:(p_max * q_max)){
    if(!is.na(Criterio_AIC[i, 3]) && Criterio_AIC[i, 3] == Optimo){
      Criterio_AIC[i, 4] <- 1
    }
  }
  return(Criterio_AIC)
}
