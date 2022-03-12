## Demonstrate matrix transposing in R

# create a vector
data <- seq(1:32)

# force data to table
table <- matrix(data, nrow = 4, ncol = 8)
cat("\nBy Column (Default):\n\n")
print(table)

# transpose the matrix
table <- t(table)
cat("\nTransposed (Rows to Columns):\n\n")
print(table)
