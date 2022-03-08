## This exercise demonstrates the operation of boolean operators in R

# store a TRUE value in a variable
active <- TRUE

# output the inverse of the created variable
print(paste("NOT logic !active:", !active))

# note that the variable remains unchanged
print(active)

# create two more variables containing vectors of boolean values
flags <- c(TRUE, TRUE, FALSE, (1 > 0), 0)
marks <- c(FALSE,TRUE, TRUE, 16, FALSE)

# output AND and OR evaluations for first elements of each vector

print(paste("AND logic:", flags && marks))
print(paste("OR logic:", flags || marks))

# create new variables containing logical evaluation of all elements in two sets
and.result <- flags & marks
or.result <- flags | marks

# print result variables for display
print(and.result)
print(or.result)
