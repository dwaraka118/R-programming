# Renaming levels of a factor

# A sample factor to work with.
x <- factor(c("alpha","beta","gamma","alpha","beta"))
x
levels(x)

# The easiest way is to use revalue() or mapvalues() from the plyr package:
library(plyr)
revalue(x, c("beta"="two", "gamma"="three"))
x <- factor(c("alpha","beta","gamma","alpha","beta"))
mapvalues(x, from = c("beta", "gamma"), to = c("two", "three"))
# If you don't want to rely on plyr, you can do the following with R's built-in functions.
# Note that these methods will modify x directly; that is, you don't have to save the result back into x.
# Rename by name: change "beta" to "two"
levels(x)[levels(x)=="beta"] <- "two"


# You can also rename by position, but this is a bit dangerous if your data
# can change in the future. If there is a change in the number or positions of
# factor levels, then this can result in wrong data.

# Rename by index in levels list: change third item, "gamma", to "three".
levels(x)[3] <- "three"
x
# Rename all levels
levels(x) <- c("one","two","three")
x

# It's possible to rename factor levels by name (without plyr),
# but keep in mind that this works only if ALL levels are present in the list; 
# if any are not in the list, they will be replaced with NA.
# Rename all levels, by name
x <- factor(c("alpha","beta","gamma","alpha","beta"))
levels(x) <- list(A="alpha", B="beta", C="gamma")
x
# It's also possible to use R's string search-and-replace functions to rename factor levels.
# Note that the ^ and $ surrounding alpha are there to ensure that the entire string matches. Without them, if there were a level named alphabet, 
# it would also match, and the replacement would be onebet.
# A sample factor to work with.
x <- factor(c("alpha","beta","gamma","alpha","beta"))
x
levels(x) <- sub("alpha", "one", levels(x))
x
# Across all columns, replace all instances of "a" with "X"
levels(x) <- gsub("a", "X", levels(x))
x
# gsub() replaces all instances of the pattern in each factor level.
# sub() replaces only the first instance in each factor level.