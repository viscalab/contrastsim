

##log transducer function:


mu_log_fun <- function(x){
  log(x)
}


r_log_vectorized_fun <- function(x) {
  mu <- mu_log_fun(x)
  noise <- rnorm(length(x), # we create as many samples as values of xs we have
                 mean = 0, 
                 sd = 0.02) # Let's use the third component for the noise
  
  mu + noise
}