# Mapping vector values

# Problem
# You want to change all instances of value x to value y in a vector.
# 
# Solution
# Create some example data
str <- c("alpha", "beta", "gamma")
num <- c(1, 2, 3)


## The easiest way is to use revalue() or mapvalues() from the plyr package:

library(plyr)
revalue(str, c("beta"="two", "gamma"="three"))

mapvalues(str, from = c("beta", "gamma"), to = c("two", "three"))


# For numeric vectors, revalue() won't work, since it uses a named vector, and
# the names are always strings, not numbers. mapvalues() will work, though:
mapvalues(num, from = c(2, 3), to = c(5, 6))
# If you don't want to rely on plyr, you can do the following with R's built-in functions. Note that these methods will modify the vectors directly; that is, you don't have to save the result back into the variable.

# Rename by name: change "beta" to "two"
str[str=="beta"] <- "two"
str

num[num==2] <- 5
num
# It's also possible to use R's string search-and-replace functions to remap values in character vectors. Note that the ^ and $ surrounding alpha are there to ensure that the entire string matches. Without them, if there were a value named alphabet, it would also match, and the replacement would be onebet.

str <- c("alpha", "beta", "gamma")

sub("^alpha$", "one", str)

# Across all columns, replace all instances of "a" with "X"
gsub("a", "X", str)


# gsub() replaces all instances of the pattern in each element
# sub() replaces only the first instance in each element
