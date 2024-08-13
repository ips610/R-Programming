# Define the coins
coins <- c(rep("Gold", 20), rep("Silver", 30), rep("Bronze", 50))

# Draw 10 coins randomly
# print(coins)
# set.seed(123)  # For reproducibility
# sample_space <- sample(coins, 10, replace = TRUE)
# print(sample_space)

sample(coins, 10, replace = TRUE)

# Generate sample space for surgical procedures
# Success probability is 0.9, Failure probability is 0.1
surgical_outcome <- c("Success", "Failure")
probabilities <- c(0.9, 0.1)

# Sample for the next 10 surgical procedures
# set.seed(123)  # For reproducibility
sample_space_surgery <- sample(surgical_outcome, 10, replace = TRUE, prob = probabilities)
print(sample_space_surgery)