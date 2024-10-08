# 2. Gamma distributed random variable with α = 2 and β = 1/3
alpha <- 2  # Shape parameter
beta <- 1/3  # Rate parameter

# (a) Find the probability that the lifetime of equipment is
# (i) 3 units of time (density at X = 3)
x <- 3
prob_density_at_3 <- dgamma(x, shape = alpha, rate = beta)
cat("The probability density at X = 3 units of time is:", prob_density_at_3, "\n")

# (ii) At least 1 unit of time (P(X > 1) = 1 - P(X <= 1))
prob_at_least_1 <- 1 - pgamma(1, shape = alpha, rate = beta)
cat("The probability that the lifetime is at least 1 unit of time is:", prob_at_least_1, "\n")

# (b) Find the value of c, if P(X ≤ c) ≥ 0.70
c_value <- qgamma(0.70, shape = alpha, rate = beta)
cat("The value of c such that P(X <= c) >= 0.70 is:", c_value, "\n")
