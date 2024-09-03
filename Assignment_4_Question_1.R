x <- c(0, 1, 2, 3, 4)
p <- c(0.41, 0.37, 0.16, 0.05, 0.01)

# Calculate the expected value (mean)
expected_value <- sum(x * p)
cat("Expected value:", expected_value, "\n")
# Or use the weighted.mean function
expected_value <- weighted.mean(x, p)
cat("Expected value:", expected_value, "\n")

expected_value <- c(x %*% p_x)
cat("Expected value:", expected_value, "\n")