#R - Matrices
#A Matrix is created using the matrix() function.
#Syntax : matrix(data, nrow, ncol, byrow, dimnames)
#Following is the description of the parameters used ???
#data is the input vector which becomes the data elements of the matrix.
#nrow is the number of rows to be created.
#ncol is the number of columns to be created.
#byrow is a logical clue. If TRUE then the input vector elements are arranged by row.
#dimname is the names assigned to the rows and columns.

###########################################################################

#Create a matrix taking a vector of numbers as input.
# Elements are arranged sequentially by row.
M <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M)
# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
print(P)

#################################################################################

#Accessing Elements of a Matrix
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
# Create the matrix.
p <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames))
p
# Access the element at 3rd column and 1st row.
print(P[1,3])
# Access the element at 2nd column and 4th row.
print(P[4,2])
# Access only the  2nd row.
print(P[2,])
# Access only the 3rd column.
print(P[,3])

###################################################################################
#################################################################################

#Matrix Computations
#Matrix Addition & Subtraction
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)
# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)
# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

####################################################################
####################################################################

#Matrix Multiplication & Division
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
print(matrix1)

matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
print(matrix2)

# Multiply the matrices.
result <- matrix1 * matrix2
cat("Result of multiplication","\n")
print(result)

# Divide the matrices
result <- matrix1 / matrix2
cat("Result of division","\n")
print(result)

