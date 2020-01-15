# Randomizing order
# Create a vector
v <- 11:20
v
# Randomize the order of the vector
v <- sample(v)
v
# Create a data frame
data <- data.frame(label=letters[1:5], number=11:15)
data
# Randomize the order of the data frame
data <- data[sample(1:nrow(data)), ]
data
##  Generating random numbers
# Problem
# You want to generate random numbers.
# Solution
# For uniformly distributed (flat) random numbers, use runif(). 
# By default, its range is from 0 to 1.
runif(1)
# Get a vector of 4 numbers
runif(4)
# Get a vector of 3 numbers from 0 to 100
runif(3, min=0, max=100)
# Get 3 integers from 0 to 100
# Use max=101 because it will never actually equal 101
floor(runif(3, min=0, max=101))
# This will do the same thing
sample(1:100, 3, replace=TRUE)
# To generate integers WITHOUT replacement:
sample(1:100, 3, replace=FALSE)
# To generate numbers from a normal distribution, use rnorm().
# By default the mean is 0 and the standard deviation is 1.
rnorm(4)
# Use a different mean and standard deviation
rnorm(4, mean=50, sd=10)
# To check that the distribution looks right, make a histogram of the numbers
x <- rnorm(400, mean=50, sd=10)
hist(x)
# Generating repeatable sequences of random numbers
# Problem :
# You want to generate a sequence of random numbers, and then generate that same sequence again later.
# Solution :
# Use set.seed(), and pass in a number as the seed.
set.seed(423)
runif(3)
set.seed(423)
runif(3)
