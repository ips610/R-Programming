# Conditional probability function
conditional_prob <- function(P_A, P_B_given_A, P_B) {
    P_A_given_B <- (P_B_given_A * P_A) / P_B
    return(P_A_given_B)
}

# Problem: Cloudy and Rain
P_Cloudy <- 0.4
P_Rain <- 0.2
P_Cloudy_given_Rain <- 0.85

# P(Rain | Cloudy)
P_Rain_given_Cloudy <- conditional_prob(P_Rain, P_Cloudy_given_Rain, P_Cloudy)
print(P_Rain_given_Cloudy)