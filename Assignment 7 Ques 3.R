x <- seq(-6, 6, length.out = 100)
df_values <- c(1, 4, 10, 30)
density_values <- sapply(df_values, function(d) dt(x, df = d))

plot(x, density_values[,4], type = "l", col = "blue", lwd = 2,
     ylab = "Density", xlab = "x",
     main = "Student's t-distribution Density Functions")
lines(x, density_values[,1], col = "red", lwd = 2)
lines(x, density_values[,2], col = "green", lwd = 2)
lines(x, density_values[,3], col = "purple", lwd = 2)
legend("topright", legend = paste("df =", df_values),
       col = c("red", "green", "purple", "blue"), lwd = 2)