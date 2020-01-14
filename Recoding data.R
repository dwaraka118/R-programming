# Recoding data
# Problem
# You want to recode data or calculate new data columns from existing ones.
# 
# Solution
# The examples below will use this data:
data <- read.table(header=T, text='
 subject sex control cond1 cond2
       1   M     7.9  12.3  10.7
       2   F     6.3  10.6  11.1
       3   F     9.5  13.1  13.8
       4   M    11.5  13.4  12.9
')

data

# Recoding a categorical variable
# The easiest way is to use revalue() or mapvalues() from the plyr package.
# This will code M as 1 and F as 2, and put it in a new column. 
# Note that these functions preserves the type: if the input is a factor, the output will be a factor; and if the input is a character vector, the output will be a character vector.

library(plyr)

# The following two lines are equivalent:
data$scode <- revalue(data$sex, c("M"="1", "F"="2"))
data$scode <- mapvalues(data$sex, from = c("M", "F"), to = c("1", "2"))
data
# data$sex is a factor, so data$scode is also a factor

# If you don't want to rely on plyr, you can do the following with R's built-in functions:
  
data$scode[data$sex=="M"] <- "1"
data$scode[data$sex=="F"] <- "2"

# Convert the column to a factor
data$scode <- factor(data$scode)
data
# Another way to do it is to use the match function:
oldvalues <- c("M", "F")
newvalues <- factor(c("g1","g2"))  # Make this a factor

data$scode <- newvalues[ match(data$sex, oldvalues) ]
data
# Recoding a continuous variable into categorical variable
# Mark those whose control measurement is <7 as "low", and those with >=7 as "high":
data$category[data$control< 7] <- "low"
data$category[data$control>=7] <- "high"

# Convert the column to a factor
data$category <- factor(data$category)
data

# With the cut function, you specify boundaries and the resulting values:
  
data$category <- cut(data$control,
                       breaks=c(-Inf, 7, 9, Inf),
                       labels=c("low","medium","high"))
data
# By default, the ranges are open on the left, and closed on the right, as in (7,9]. 
# To set it so that ranges are closed on the left and open on the right, like [7,9), use right=FALSE.
# Calculating a new continuous variable
# Suppose you want to add a new column with the sum of the three measurements.

data$total <- data$control + data$cond1 + data$cond2
data
