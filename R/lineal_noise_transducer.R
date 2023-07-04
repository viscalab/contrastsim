

##lineal transducer with proportional noise:
#poner p1, p2, p3



mu_lineal_fun <- function(p, x){
  p[1] + p[2] * x
}



r_lineal_vectorized_fun <- function(p, x) {
  mu <- mu_lineal_fun(c(p[1], p[2]), x)
  noise <- rnorm(length(x), # we create as many samples as values of xs we have
                 mean = 0, 
                 sd = p[3]) # Let's use the third component for the noise
  noise_2 <- noise*mu #lo he hecho así, quizá está mal
  
  mu + noise_2
}
