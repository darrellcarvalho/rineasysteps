## This is to demonstrate combining multiple vectors into a single matrix

# create three equal-length vectors
start <- LETTERS[1:10]
finish <- LETTERS[17:26]
numeric <- seq(1:10)

# create a matrix storing the vector values in individual rows
table <- rbind(start, finish, numeric)
cat("\nBind Rows:\n\n")
print(table)

# create a matrix storing the vector values in individual columns
table <- cbind(start, finish, numeric)
cat("\nBind Columns:\n\n")
print(table)
