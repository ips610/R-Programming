a = c(1,2,3,4)
b = c(5,6,7,8)

print(paste("Vector A: ", paste(a, collapse=" ")))
print(paste("Vector B: ", paste(b, collapse=" ")))

print(paste("Sum of A and B: ", paste(a+b, collapse=" ")))
print(paste("Difference of A and B: ", paste(a-b, collapse=" ")))
print(paste("Product of A and B: ", paste(a*b, collapse=" ")))
print(paste("Quotient of A and B: ", paste(a/b, collapse=" ")))

plot(a,b, main = 'Line Graph', xlab = 'A', ylab = 'B', type = 'l')
