# Define the probability distribution function for X
f_X <- function(x) {
    return((3/4) * (1/4)^(x - 1))
}

# Define the function to find the probability distribution of Y = X^2
f_Y <- function(x) {
    y = x^2
    return(f_X(x)) # Since Y = X^2, the probability of Y is just the probability of X
}

# Calculate the probability of Y for X = 3
X_value <- 3
Y_value <- X_value^2
prob_Y_given_X3 <- f_Y(X_value)
cat("Probability of Y when X = 3 (Y =", Y_value, "):", prob_Y_given_X3, "\n")

# Calculate the expected value and variance of Y for X = 1, 2, 3, 4, 5
X_values <- 1:5
Y_values <- X_values^2

# Calculate the expected value of Y
expected_Y <- sum(f_Y(X_values) * Y_values)

# Calculate the second moment of Y
second_moment_Y <- sum(f_Y(X_values) * Y_values^2)

# Calculate the variance of Y
variance_Y <- second_moment_Y - expected_Y^2

# Output the results
cat("Expected value of Y:", expected_Y, "\n")
cat("Variance of Y:", variance_Y, "\n")