# 1. Exponentially distributed random variable with lambda = 1/2
lambda <- 1/2

# (a) Find the value of the density function at x = 3
x <- 3
density_at_3 <- dexp(x, rate = lambda)
cat("The value of the density function at x = 3 is:", density_at_3, "\n")

# (b) Plot the graph of the exponential probability distribution for 0 <= x <= 5
x_values <- seq(0, 5, by = 0.01)
pdf_values <- dexp(x_values, rate = lambda)

plot(x_values, pdf_values, type = "l", col = "blue", 
     main = "Exponential PDF (λ = 1/2)", 
     xlab = "Time (hours)", ylab = "Density")

# (c) Find the probability that the repair time takes at most 3 hours
prob_at_most_3 <- pexp(3, rate = lambda)
cat("The probability that the repair time takes at most 3 hours:", prob_at_most_3, "\n")

# (d) Plot the graph of cumulative exponential probabilities for 0 <= x <= 5
cdf_values <- pexp(x_values, rate = lambda)

plot(x_values, cdf_values, type = "l", col = "red", 
     main = "Exponential CDF (λ = 1/2)", 
     xlab = "Time (hours)", ylab = "Cumulative Probability")

# (e) Simulate 1000 exponential distributed random numbers with λ = 1/2 and plot the simulated data
set.seed(123)  # For reproducibility
simulated_data <- rexp(1000, rate = lambda)

hist(simulated_data, breaks = 30, col = "lightblue", 
     main = "Histogram of Simulated Exponential Data", 
     xlab = "Time (hours)", freq = FALSE)

# Overlay the theoretical density
lines(x_values, pdf_values, col = "blue", lwd = 2)
