factorial_calculator <- function() {
    num <- as.integer(readline(prompt="Enter a number: "))
    fact <- 1
    if(num < 0){
        print("Factorial does not exist for negative numbers")
    } else if(num == 0){
        print("The factorial of 0 is 1")
    } else {
        for(i in 1:num){
            fact <- fact * i
        }
        print(paste("The factorial of", num, "is", fact))
    }
}

factorial_calculator()
