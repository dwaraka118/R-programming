# Finding and removing duplicate records
# Problem
# You want to find and/or remove duplicate entries from a vector or data frame.
# # Solution
# With vectors:
# Generate a vector 
set.seed(158)
x <- round(rnorm(20, 10, 5))
x
# For each element: is this one a duplicate (first instance of a particular value not counted)
duplicated(x)
# The values of the duplicated entries
# Note that '6' appears in the original vector three times, and so it has two
# entries here.
x[duplicated(x)]
# Duplicated entries, without repeats
unique(x[duplicated(x)])
# The original vector with all duplicates removed. These do the same:
unique(x)
x[!duplicated(x)]


# With data frames:

# A sample data frame:
df <- read.table(header=TRUE, text='
 label value
     A     4
     B     3
     C     6
     B     3
     B     1
     A     2
     A     4
     A     4
')
df
# # Is each row a repeat?
duplicated(df)
# Show the repeat entries
df[duplicated(df),]
# Show unique repeat entries (row names may differ, but values are the same)
unique(df[duplicated(df),])
# Original data with repeats removed. These do the same:
unique(df)
df[!duplicated(df),]
