# Given: X ~ U(0, 60)
a <- 0   # Lower bound
b <- 60  # Upper bound

# (a) P(X > 45)
prob_a <- 1 - punif(45, min = a, max = b)
cat("The probability that the waiting time is more than 45 minutes:", prob_a, "\n")

# (b) P(20 < X < 30)
prob_b <- punif(30, min = a, max = b) - punif(20, min = a, max = b)
cat("The probability that the waiting time lies between 20 and 30 minutes:", prob_b, "\n")

