calculator <- function() {
    cat("Select operation:\n")
    cat("1. Add\n")
    cat("2. Subtract\n")
    cat("3. Multiply\n")
    cat("4. Divide\n")
    
    choice <- as.integer(readline(prompt="Enter choice [1/2/3/4]: "))
    
    if(choice %in% 1:4) {
        num1 <- as.numeric(readline(prompt="Enter first number: "))
        num2 <- as.numeric(readline(prompt="Enter second number: "))
        
        result <- switch(choice,
                         num1 + num2,
                         num1 - num2,
                         num1 * num2,
                         if(num2 != 0) num1 / num2 else "Cannot divide by zero")
        
        cat("Result: ", result, "\n")
    } else {
        cat("Invalid input\n")
    }
}

calculator()