## This exercise demonstrates how to extract subsets while retaining
## dimensionality; default behavior returns vectors

# create vector of data
data <- 1:28

# create the matrix
table <- matrix(data, nrow = 4, ncol = 7, byrow = TRUE,
                dimnames = list(letters[1:4], LETTERS[1:7]))

# output the matrix
cat("\nMatrix...\n")
print(table)

# create subset using default behavior
tier <-  table[2,]

# output subset from default
cat("\nSubset..\n\nRow #2 (Default)...\n")
print(tier)

# identify subset data structure
cat("\nMatrix?:", is.matrix(tier))
cat("\nVector?:", is.vector(tier), "\n\n")

# recreate the subset overriding the default behavior
tier <- table[2,,drop = FALSE]

# output revised subset
cat("\nRow #2 (Drop = FALSE)...\n")
print(tier)

# identify subset data structure again
cat("\nMatrix?:", is.matrix(tier))
cat("\nVector?:", is.vector(tier),"\n")
