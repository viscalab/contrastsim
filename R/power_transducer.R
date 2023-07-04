


##Power transducer function (Stevens)
#hay que poner una variable con p (power)


mu_power_fun <- function(x, p){
  x^p
}


r_power_vectorized_fun <- function(x, p) {
  mu <- mu_power_fun(x, p)
  noise <- rnorm(length(x), # we create as many samples as values of xs we have
                 mean = 0, 
                 sd = 0.08) # Let's use the third component for the noise
  noise_2 <- noise*mu #lo he hecho así, quizá está mal
  
  mu + noise_2
}