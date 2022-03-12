## This exercise demonstrates how to build a matrix

# bring in data
data <- seq(1:32)

# create a matrix to force data into tabular form
table <- matrix(data, nrow = 4, ncol = 8)
print(table)

# confirm structure type
cat("\nVector?:", is.vector(table),
    "\tMatrix?:", is.matrix(table))

# retrieve and replace value in a cell
cat("\n\nCell 4,5 Contains:", table[4,5], "\n")
table[4,5] <- 10

# search for specific value and return cell coordinates
cell <- which(table == 10, arr.ind = TRUE)
cat("\n\nValue 10 Search:\n")
print(cell)
