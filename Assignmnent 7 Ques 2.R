chi_df <- c(2, 10, 25)
par(mfrow = c(1, 3))  # Set up the plot window to show multiple plots
for (d in chi_df) {
    chi_values <- rchisq(n, df = d)
    hist(chi_values, breaks = 20, col = "lightgreen", main = paste("Chi-square Distribution (df =", d, ")"),
         xlab = "Values")
}
par(mfrow = c(1, 1))  # Reset plot window