# Manupulating data

#####################
###Sorting####
######################
# Vectors
# Make up a randomly ordered vector
v <- sample(101:110)
v
# Sort the vector
sort(v)
# Reverse sort
sort(v, decreasing=TRUE)
## Data frames
# To sort a data frame on one or more columns, you can use the arrange function from plyr package,or use R's built-in functions.
# The arrange function is much easier to use, but does require the external package to be installed.
# Make a data frame
df <- data.frame (id=1:4,
                  weight=c(20,27,24,22),
                  size=c("small", "large", "medium", "large"))
df

library(plyr)
# Sort by weight column. These have the same result.
arrange(df, weight)       # Use arrange from plyr package
df[ order(df$weight), ]   # Use built-in R functions
# Sort by size, then by weight
arrange(df, size, weight)         # Use arrange from plyr package
df[ order(df$size, df$weight), ]  # Use built-in R functions
# Sort by all columns in the data frame, from left to right
df[ do.call(order, as.list(df)), ] 
# In this particular example, the order will be unchanged
# Note that the size column is a factor and is sorted by the order of the factor levels.
# In this case, the levels were automatically assigned alphabetically (when creating the data frame), so large is first and small is last.

# Reverse sort:
#   
# The overall order of the sort can be reversed with the argument decreasing=TRUE.
# 
# To reverse the direction of a particular column, the method depends on the data type:
#   
# Numbers: put a - in front of the variable name, e.g. df[ order(-df$weight), ].
# Factors: convert to integer and put a - in front of the variable name, e.g. df[ order(-xtfrm(df$size)), ].
# Characters: there isn't a simple way to do this. One method is to convert to a factor first and then sort as above.
# Reverse sort by weight column. These all have the same effect:
arrange(df, -weight)                      # Use arrange from plyr package
df[ order(df$weight, decreasing=TRUE), ]  # Use built-in R functions
df[ order(-df$weight), ]                  # Use built-in R functions
# Sort by size (increasing), then by weight (decreasing)
arrange(df, size, -weight)         # Use arrange from plyr package
df[ order(df$size, -df$weight), ]  # Use built-in R functions
# Sort by size (decreasing), then by weight (increasing)
# The call to xtfrm() is needed for factors
arrange(df, -xtfrm(size), weight)         # Use arrange from plyr package
df[ order(-xtfrm(df$size), df$weight), ]  # Use built-in R functions
