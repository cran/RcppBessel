## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(microbenchmark)
library(Bessel)
library(RcppBessel)
z <- seq(-20, 20, by = 0.001)
b <- microbenchmark(BesselK(z, 2, TRUE), bessel_k(z, 2, TRUE), times = 5L)
print(b)

