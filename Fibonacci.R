fibonacci_sequence <- function() {
    n <- as.integer(readline(prompt="Enter the number of terms: "))
    if(n <= 0) {
        cat("Please enter a positive integer.\n")
    } else {
        fib <- numeric(n)
        fib[1] <- 0
        if(n > 1) fib[2] <- 1
        if(n > 2) {
            for(i in 3:n) {
                fib[i] <- fib[i-1] + fib[i-2]
            }
        }
        cat("Fibonacci sequence:\n", fib, "\n")
    }
}

fibonacci_sequence()