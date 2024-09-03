# Define the number of copies sold (X) and the corresponding probabilities (p(X))
x <- c(0, 1, 2, 3)
p_x <- c(0.1, 0.2, 0.2, 0.5)

# Define the function to calculate the net revenue (Y)
f <- function(t) {
    result <- (12 * t) + (2 * (3 - t)) - 18
    return(result)
}

# Calculate the expected value of Y
expected_Y <- sum(f(x) * p_x)
expected_Y