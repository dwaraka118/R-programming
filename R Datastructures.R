# DataStructures in R
# Vector in R
# what is Vector in R:
# The vector is the simplest way to store more than one value in R. 
# The c function (mnemonic for concatenate or combine) allows you to quickly enter data into R.

#Numeric Vector Example:
X <- c(1,-2,5.3,6,-20,4) # numeric vector
print(X)
#Character Vector Example:
Y <- c("one","two","three") # character vector
print(Y)
#Logical Vector Example:
Z <- c(FALSE,TRUE,FALSE,FALSE,TRUE,FALSE) #logical vector
print(Z)
#In vector, Objects should be of single data type. vector doesn't accept multiple data type
W <- c(FALSE,1,-2.0,"two")
print(W)
mode(W)

#Accessing Vector Elements in R
# Elements of a Vector in R are accessed using indexing. 
# The [ ] brackets are used for indexing. Indexing starts with position 1.
# Giving a negative value in the index drops the element of that position from result.
# TRUE, FALSE or 0 and 1 can also be used for indexing.
#Example
# Accessing vector elements using position.
x <- c("Jan","Feb","Mar","April","May","June","July")
y <- x[c(2,3,6)]
print(y)


# Accessing vector elements using logical indexing.
v <- x[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)


# Accessing vector elements using negative indexing.

t <- x[c(-2,-5)]

print(t)

#Vector arithmetic operations(addition subtraction, multiplication and division) in R:
# Create two vectors.
v1 <- c(1,2,4,5,7,11)
v2 <- c(12,4,3,8,1,21) 

# Vector addition.
add.result <- v1+v2
print(add.result) 

# Vector substraction.
sub.result <- v1-v2
print(sub.result) 

# Vector multiplication.
multi.result <- v1*v2
print(multi.result) 

# Vector division.
divi.result <- v1/v2
print(divi.result)

#Vector element recycling in R
#If we apply arithmetic operations to two vectors of unequal length, then the elements of the shorter vector are recycled to complete the operations

#Example
v1 <- c(1,2,4,5,7,11)
v2 <- c(4,11)    # V2 becomes c(4,11,4,11,4,11) 
add.result <- v1+v2
print(add.result) 
sub.result <- v1-v2
print(sub.result)

#Sorting a Vector in R
#Elements in a vector can be sorted using the sort() function.
#Example
#numerical vector sort
v1 <- c(1,2,4,5,7,11)
sort(v1) # sorts in ascending order which is default
sort(v1,decreasing=TRUE) # sorts in descending order  

# Character vector sort
v2 <- c("Cherry","BlueBerry","Apple","Pineapple")
sort(v2) # sorts in Alphabetical order which is default
sort(v2,decreasing=TRUE) # sorts in Reverse Alphabetical order

##############################################################################################
##############################################################################################

#List in R:
#Lists provide a way to store a variety of objects of possibly varying modes in a single R object.
#Note that when forming a list in R, the mode of each object in the list is retained, Which is not possible in vectors.
#Example
mylist = list(c(1,4,6),"dog",3,"cat",TRUE,c(9,10,11))
mylist
mode(mylist)
class(mylist)
sapply(mylist,mode)
#Merging Lists in R
#You can merge many lists into one list by placing all the lists inside one list() function.

#Example
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Jan","Feb","Mar")

# Merge the two lists.
merged.list <- c(list1,list2)

# Print the merged list.
print(merged.list)

##############################################################################################
##############################################################################################

# Matrix in R Explained - All about matrix in R
# All columns in a matrix must have the same mode(numeric, character, etc.) and the same length.
# The general format of matrix in R is
# mymatrix <- matrix(vector, nrow=r, ncol=c, byrow=FALSE,dimnames)
# data(Vector) is the input vector which becomes the data elements of the matrix.
# nrow is the number of rows to be created.
# ncol is the number of columns to be created.
# byrow=TRUE indicates that the matrix should be filled by rows. 
# byrow=FALSE indicates that the matrix should be filled by columns (the default).
# dimname is the names assigned to the rows and columns.
# Example
mymatrix <- matrix(c(1,2,3,5,6,7,9,10,12), nrow=3, ncol=3, byrow=FALSE)
mymatrix

# Dimnames
# Define the column and row names.
rownames = c("row1", "row2", "row3")
colnames = c("col1", "col2", "col3")

P <- matrix(c(1,2,3,5,6,7,9,10,12), nrow=3, ncol=3, byrow=FALSE, dimnames = list(rownames, colnames))
print(P)

# Accessing Elements of a Matrix in R:
# Elements of a matrix can be accessed by using the row and column index of the element.
# Access the element at 3rd column and 1st row.
print(mymatrix[1,3])

# Access the element at 2nd column and 3rd row.
print(mymatrix [3,2])

# Access only the  2nd row.
print(mymatrix [2,])

# Access only the 3rd column.
print(mymatrix [,3])

# Matrix Computations in R (Matrix addition, Matrix subtraction, Matrix multiplication, Matrix division):
# Various mathematical operations are performed on the matrices using the R operators.
# The result of the operation is also a matrix.
# Prerequisite is both the matrices has to be of same dimension
# Example
matrix1 <- matrix(c(1, 3, 5, 7), nrow = 2)
matrix1
matrix2 <- matrix(c(2, 4, 6, 8), nrow = 2)
matrix2

# Add the matrices.
Mat.Add <- matrix1 + matrix2
Mat.Add

# Subtract the matrices
Mat.Sub <- matrix1 - matrix2
Mat.Sub

# Multiply the matrices.
Mat.Multi <- matrix1 * matrix2
Mat.Multi

# Divide the matrices
Mat.Div <- matrix1 / matrix2
Mat.Div

##############################################################################################
##############################################################################################

#Array in R:
#Array in R are similar to matrices but can have more than two dimensions.
#An array is created using the array() function. 
#It takes vectors as input and uses the values in the dim parameter to create an array.

#Example:
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

#Naming Columns and Rows
#We can give names to the rows, columns and matrices in the array by using the dimnames parameter.
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
print(result)


#Accessing Array Elements
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names, column.names, matrix.names))

# Print the third row of the second matrix of the array.
print(result[3,,2])

# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])

#Manipulating Array Elements
#As array is made up matrices in multiple dimensions, the operations on elements of array are carried out by accessing elements of the matrices.
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]

# Add the matrices.
result <- matrix1+matrix2
print(result)

# Calculations Across Array Elements
# We can do calculations across the elements in an array using the apply() function.

# Syntax:apply(x, margin, fun)
# x is an array.
# margin is the name of the data set used.
# fun is the function to be applied across the elements of the array.
# Example
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)

# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(1), sum)
print(result)

############################################################################################
############################################################################################

# R - Factors
# Factors in R is a data type used to store categorical variable, which can be either numeric or string
# Most important advantage to convert integer or character to factor is, they can be used in statistical modeling where they will be implemented correctly.
# factor() is the function used to convert numerical or character variable to factor
# We can also change the order of the factor according to our desire.
# Add an optional parameter called Levels within that create a vector of your desire order and add an another optional parameter ordered=TRUE.

# Example
# Factors in R: Convert to Factor without order.
data = c(4,5,5,4,4,3,5,4,5,4,5,4,3,3)
fdata = factor(data) # converting numeric to factor
print(fdata)

# Example2
# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))

# Factors in R: Convert to Factor with desired order.

#Example:1
week=c("sunday","monday","tuesday","wednesday","thursday","friday","saturday","wednesday","tuesday","thursday","wednesday")
table(week)

week_ordered=factor(week,levels=c("sunday","monday","tuesday","wednesday","thursday","friday","saturday"),ordered=TRUE)
table(week_ordered)

# Example:2
# Create the vectors for data frame.
height <- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

# Create the data frame.
input_data <- data.frame(height,weight,gender)
print(input_data)

# Test if the gender column is a factor.
print(is.factor(input_data$gender))

# Print the gender column so see the levels.
print(input_data$gender)

#Changing the Order of Levels
#The order of the levels in a factor can be changed by applying the factor function again with new order of the levels.

#Example
data <- c("East","West","East","North","North","East","West",
          "West","West","East","North")
# Create the factors
factor_data <- factor(data)
print(factor_data)

# Apply the factor function with required order of the level.
new_order_data <- factor(factor_data,levels = c("East","West","North"))
print(new_order_data)

#Generating Factor Levels:
# We can generate factor levels by using the gl() function. 
# It takes two integers as input one indicates number of levels and other indicates the number of repetition.
# Syntax:gl(n, k, labels)
# 
# Following is the description of the parameters used:
#   
# n is a integer giving the number of levels.
# k is a integer giving the number of replications.
# labels is a vector of labels for the resulting factor levels

# Example:
v <- gl(3, 4, labels = c("India", "USA", "Russia"))
print(v)

############################################################################################
############################################################################################

# All About Data Frame in R - R Data frame
# A Data frame is a list of vectors of equal length. Data frame in R is used for storing data tables.
# 
# Following are the characteristics of a data frame.
# 
# The column names should be non-empty.
# The row names should be unique.
# The data stored in a data frame can be of numeric, factor or character type.
# Each column should contain same number of data items.

# Create Data Frame in R:
# Following variable student_df is a data frame containing two vectors subject and percentage
# create data frame in R.

#Example:1
subject=c("English","Maths","Chemistry","Physics") # vector1 named as subject
percentage =c(80,100,85,95) # vector2 named as percentage
students_df=data.frame(subject,percentage) # Vector1 and vector2 together as dataframe
#Example:2
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(emp.data) 

# Get the Structure of the Data Frame
# The structure of the data frame can be seen by using str() function.
# Get the structure of the data frame.
str(emp.data)
str(students_df)
# Summary of Data in Data Frame
# The statistical summary and nature of the data can be obtained by applying summary() function.
print(summary(emp.data))  
print(summary(students_df))  

#Accessing elements of Data frame in R:
#Example:1
nrow(students_df) # number of rows in data frame
ncol(students_df) # number of columns in data frame.
dim(students_df) # Dimension of data frame
students_df[1,2] # Access first row and second column of the data frame
students_df[,1] # Access all the elements of the first column

# Extract Data from Data Frame in R:
# We can Extract specific column from a data frame in R using column name.
# This can be done with the "$" Symbol. 
# Dataframe_name$Column_name will give you the value of the specific column

#Example:1
# Create the data frame.
emp.data <- data.frame(emp_id = c (1:5),
                       emp_name = c("john","marsh","mitchell","lara","peter"),
                       salary = c(6213,1515,4113,3729,2843),
                       joining_date = as.Date(c("2012-12-01","2014-07-23","2012-11-15","2015-05-11","2016-03-27")),
                       stringsAsFactors=FALSE )
emp.data
emp.data$emp_name
#Example:2
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  
  start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Extract Specific columns.
result <- data.frame(emp.data$emp_name,emp.data$salary)
print(result)

#Extract the first two rows and then all columns
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5),
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25),
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)
# Extract first two rows.
result <- emp.data[1:2,]
print(result)
#Extract 3rd and 5th row with 2nd and 4th column
# Create the data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)

# Extract 3rd and 5th row with 2nd and 4th column.
result <- emp.data[c(3,5),c(2,4)]
print(result)

# Expand Data Frame
# A data frame can be expanded by adding columns and rows.
# Row bind and column bind operation on data frame in R :
# A data frame in R can be expanded by adding columns and rows. 
# Following example is Just to add the column vector using a new column name.
# A vector is passed to data frame to add the column in data frame with "$" symbol in below example.

#Example:1
# Add the "dept" coulmn.

emp.data$dept <- c("IT","Operations","IT","HR","Finance")
v <- emp.data
print(v)

# Alternatively we can also use Row bind rbind() function and column bind cbind() function to add the Row and Column to the data frame. 
# We can join multiple vectors to create a data frame using the cbind() function. 
# Also we can merge two data frames using rbind() function.
#Example:2
# create a vector called designation

designation <- c ("Entry level","Manager","Technical specialist","Entry level","Senior Level")
emp.table<-cbind(emp.data,designation)
print(emp.table)

# Similarly  Row bind function  rbind() binds two data frame into single data frame.
# Prerequisite is both the data frame should have same number of columns and should have same column names
# Example:

# Create the first data frame.
emp.data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  dept = c("IT","Operations","IT","HR","Finance"),
  stringsAsFactors = FALSE
)
emp.data

# Create the second data frame
emp.newdata <- 	data.frame(
  emp_id = c (6:8), 
  emp_name = c("Rasmi","Pranab","Tusar"),
  salary = c(578.0,722.5,632.8), 
  start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
  dept = c("IT","Operations","Fianance"),
  stringsAsFactors = FALSE
)
emp.newdata
# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

