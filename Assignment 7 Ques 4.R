# (i) Find the 95th percentile of the F-distribution with (10, 20) degrees of freedom
f_percentile_95 <- qf(0.95, df1 = 10, df2 = 20)

# (ii) Calculate the area under the curve for intervals [0, 1.5] and [1.5, +∞) for an F-curve with df1 = 10 and df2 = 20
area_0_to_1.5 <- pf(1.5, df1 = 10, df2 = 20)
area_1.5_to_inf <- 1 - area_0_to_1.5

# (iii) Calculate the quantile for a given area under the curve for q = 0.25, 0.5, 0.75, 0.999
quantiles <- qf(c(0.25, 0.5, 0.75, 0.999), df1 = 10, df2 = 20)

# (iv) Generate 1000 random values from the F-distribution with df1 = 10 and df2 = 20 and plot a histogram
f_values <- rf(1000, df1 = 10, df2 = 20)
hist(f_values, breaks = 30, col = "orange", main = "Histogram of F-distribution (df1 = 10, df2 = 20)",
     xlab = "F-values")

# Display results for 4(i), 4(ii), and 4(iii)
cat("95th Percentile of F-distribution (df1 = 10, df2 = 20):", f_percentile_95, "\n")
cat("Area under F-curve for [0, 1.5]:", area_0_to_1.5, "\n")
cat("Area under F-curve for [1.5, +∞):", area_1.5_to_inf, "\n")
cat("Quantiles for F-distribution (q = 0.25, 0.5, 0.75, 0.999):", quantiles, "\n")