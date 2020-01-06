#R - Lists
#Lists are the R objects which contain elements of different types like ??? numbers, strings, vectors and another list inside it. A list can also contain a matrix or a function as its elements. List is created using list() function.
#Creating a List
list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(list_data)
#Naming List Elements
#The list elements can be given names and they can be accessed using these names.
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))
list_data
# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
# Show the list.
print(list_data)
#Accessing List Elements
#Elements of the list can be accessed by the index of the element in the list. In case of named lists it can also be accessed using the names.
# Create a list containing a vector, a matrix and a list.
list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))
list_data
# Give names to the elements in the list.
names(list_data) <- c("1st Quarter", "A_Matrix", "A Inner list")
list_data
# Access the first element of the list.
print(list_data[1])
# Access the second element of the list.
print(list_data[2])
# Access the third element of the list.
print(list_data[3])
# Access the first,third elements of the list.
print(list_data[c(1,3)])
list_data
# Access the list element using the name of the element.
print(list_data$A_Matrix)
#Merging Lists
#You can merge many lists into one list by placing all the lists inside one list() function.
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")
# Merge the two lists.
merged.list <- c(list1,list2)
merged.list
#Converting List to Vector
# Create lists.
list1 <- list(1:5)
print(list1)

list2 <-list(10:14)
print(list2)

# Convert the lists to vectors.
v1 <- unlist(list1)
v2 <- unlist(list2)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)
class(result)
str(result)
