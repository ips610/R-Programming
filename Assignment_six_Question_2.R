f <- function(x,y) {
    (x+y) / 30
    x <- (0:3)
    y <- (0:2)
}

M <- matrix(c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2)), nrow=4, ncol=3, byrow=TRUE)
M
