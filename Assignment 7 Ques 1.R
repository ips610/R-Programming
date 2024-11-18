n <- 100
df <- n - 1
t_values <- rt(n, df)
hist(t_values, breaks = 20, col = "lightblue", main = "Histogram of t-distribution (df = n - 1)",
     xlab = "t-values")