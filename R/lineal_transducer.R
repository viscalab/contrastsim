


##lineal transducer constant noise:
# hay que poner variables p1, p2, p3




mu_lineal_fun <- function(p, x){
  p[1] + p[2] * x
}


r_lineal_fun <- function(p, x) {
  rnorm(length(x),
        mean = mu_lineal_fun(c(p[1], p[2]), x), 
        sd = p[3])
}
