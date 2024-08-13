birthday_simulation <- function(n, trials = 10000) {
    match_count <- 0
    
    for (i in 1:trials) {
        birthdays <- sample(1:365, n, replace = TRUE)
        if (any(duplicated(birthdays))) {
            match_count <- match_count + 1
        }
    }
    
    probability <- match_count / trials
    return(probability)
}

# Test for various n
n_values <- c(10, 20, 23, 30, 50) # No of Rooms
probabilities <- sapply(n_values, birthday_simulation)
data.frame(n = n_values, Probability = probabilities)




find_min_n <- function(threshold = 0.5, trials = 10000) {
    n <- 1
    while (TRUE) {
        prob <- birthday_simulation(n, trials)
        if (prob > threshold) {
            return(n)
        }
        n <- n + 1
    }
}

min_n <- find_min_n()
print(min_n)