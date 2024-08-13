# Mode function to handle multiple modes
calculate_mode <- function(x) {
    uniq_vals <- unique(x)
    cat('uniq_values:', uniq_vals, '\n')
    tabulated <- tabulate(match(x, uniq_vals))
    cat('tabulated values:', tabulated, '\n')
    max_count <- max(tabulated)
    modes <- uniq_vals[tabulated == max_count]
    return(modes)
}

# Example usage
sample_vector <- c(1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4)
mode_values <- calculate_mode(sample_vector)
print(mode_values)