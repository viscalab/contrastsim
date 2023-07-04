
#derivada mu

dmu <- function(x, y) {
  
      x_lag = lag(x)
      y_lag = lag(y)
  
  (y - y_lag) / (x - x_lag)
}
