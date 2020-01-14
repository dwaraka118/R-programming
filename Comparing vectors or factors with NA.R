# Comparing vectors or factors with NA
# Problem
# You want to compare two vectors or factors but want comparisons with NA's to be reported as TRUE or FALSE (instead of NA).
# Solution
# Suppose you have this data frame with two columns which consist of boolean vectors:
df <- data.frame( a=c(TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,NA,NA,NA),
                  b=c(TRUE,FALSE,NA,TRUE,FALSE,NA,TRUE,FALSE,NA))
df
# Normally, when you compare two vectors or factors containing NA values, 
# the vector of results will have NAs where either of the original items was NA. 
# Depending on your purposes, this may or not be desirable.
df$a == df$b
# The same comparison, but presented as another column in the data frame:
data.frame(df, isSame = (df$a==df$b))
# A function for comparing with NA's

# This comparison function will essentially treat NA's as just another value.
# If an item in both vectors is NA, then it reports TRUE for that item;
# if the item is NA in just one vector, it reports FALSE; 
# all other comparisons (between non-NA items) behaves the same.
# This function returns TRUE wherever elements are the same, including NA's,
# and FALSE everywhere else.
compareNA <- function(v1,v2) {
  same <- (v1 == v2) | (is.na(v1) & is.na(v2))
  same[is.na(same)] <- FALSE
  return(same)
}
# Examples of the function in use
# Comparing boolean vectors:
compareNA(df$a, df$b)
# Same comparison, presented as another column
data.frame(df, isSame = compareNA(df$a,df$b))
# It also works with factors, even if the levels of the factors are in different orders:
# Create sample data frame with factors.
df1 <- data.frame(a = factor(c('x','x','x','y','y','y', NA, NA, NA)),
                  b = factor(c('x','y', NA,'x','y', NA,'x','y', NA)))

# Do the comparison
data.frame(df1, isSame = compareNA(df1$a, df1$b))
# It still works if the factor levels are arranged in a different order
df1$b <- factor(df1$b, levels=c('y','x'))
data.frame(df1, isSame = compareNA(df1$a, df1$b))