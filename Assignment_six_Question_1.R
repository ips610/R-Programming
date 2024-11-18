cat("HI")
install.packages("pracma")
library(pracma)

f_xy <- function(x, y) {
    (2 * (2 * x + 3 * y)) / 5
}

check <- integral2(f_xy, xmin = 0, xmax = 1, ymin = 0, ymax = 1)$Q
check  # Should be close to 1 if it's a valid joint density

marginal_gx <- function(x) {
    integrate(function(y) (2 * (2 * x + 3 * y)) / 5, 0, 1)$value
}

g_x_at_1 <- marginal_gx(1)
g_x_at_1  # Marginal distribution at x = 1

marginal_hy <- function(y) {
    integrate(function(x) (2 * (2 * x + 3 * y)) / 5, 0, 1)$value
}

h_y_at_0 <- marginal_hy(0)
h_y_at_0  # Marginal distribution at y = 0


expected_xy <- integral2(function(x, y) x * y * (2 * (2 * x + 3 * y)) / 5, 0, 1, 0, 1)$Q
expected_xy  # Expected value E[XY]
