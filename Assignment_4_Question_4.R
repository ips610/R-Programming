# Define the PDF function
f_x <- function(x) {
    return(0.5 * exp(-x))
}

# Define the first moment (mean) function
first_moment <- function() {
    integrate_result <- 0
    for (x in seq(1, 10, by=0.001)) {
        integrate_result <- integrate_result + x * f_x(x) * 0.001
    }
    return(integrate_result)
}

# Define the second moment function
second_moment <- function() {
    integrate_result <- 0
    for (x in seq(1, 10, by=0.001)) {
        integrate_result <- integrate_result + x^2 * f_x(x) * 0.001
    }
    return(integrate_result)
}

# Calculate the mean (first moment)
mean_value <- first_moment()

# Calculate the second moment
second_moment_value <- second_moment()

# Calculate the variance
variance_value <- second_moment_value - mean_value^2

# Output the results
cat("Mean (First Moment):", mean_value, "\n")
cat("Second Moment:", second_moment_value, "\n")
cat("Variance:", variance_value, "\n")