f <- function(t) {
    0.1*t*exp(-1*0.1*t)
}
ans <- integrate(f, 0, Inf)
ans