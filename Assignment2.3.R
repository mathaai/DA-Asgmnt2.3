matr <- replicate(10, rnorm(10))
t <- c(matr)

system.time(
  for (i in 1:10) {
    for (j in 1:10) {
      matr[i,j] <- matr[i,j] + 10*sin(0.75*pi)
    }
  }
)

system.time(
  t <- t + 10*sin(0.75*pi)
)