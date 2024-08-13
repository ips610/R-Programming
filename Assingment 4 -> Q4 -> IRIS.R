cat("IRIS Dataset\n")
# Load the dataset
data(iris)

# (a) Print first few rows
head(iris)

# (b) Find the structure of the dataset
str(iris)

# (c) Range of Sepal Length
range(iris$Sepal.Length)

# (d) Mean of Sepal Length
mean(iris$Sepal.Length)

# (e) Median of Sepal Length
median(iris$Sepal.Length)

# (f) First and Third Quartiles + IQR
quartiles <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
iqr <- IQR(iris$Sepal.Length)
list(First_Quartile = quartiles[1], Third_Quartile = quartiles[2], IQR = iqr)

# (g) Standard Deviation and Variance
sd(iris$Sepal.Length)
var(iris$Sepal.Length)

# (h) Exercises for Sepal.Width, Petal.Length, Petal.Width
summary(iris$Sepal.Width)
summary(iris$Petal.Length)
summary(iris$Petal.Width)

# (i) Use the built-in function summary on the entire Iris dataset
summary(iris)





# Using lapply

# Columns to analyze
numeric_columns <- iris[, 1:4]  # This selects the first four columns which are numeric

# (d) Mean of each numeric column
means <- lapply(numeric_columns, mean)
print(means)

# (e) Median of each numeric column
medians <- lapply(numeric_columns, median)
print(medians)

# (g) Standard Deviation of each numeric column
sds <- lapply(numeric_columns, sd)
print(sds)

# Variance of each numeric column
variances <- lapply(numeric_columns, var)
print(variances)

# (f) First and Third Quartiles + IQR for each numeric column
quartiles_iqr <- lapply(numeric_columns, function(x) {
    quartiles <- quantile(x, probs = c(0.25, 0.75))
    iqr <- IQR(x)
    return(list(First_Quartile = quartiles[1], Third_Quartile = quartiles[2], IQR = iqr))
})
print(quartiles_iqr)