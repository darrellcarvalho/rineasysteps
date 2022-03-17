## This exercise demonstrates subsetting of data frames

# Bring in the data
setwd("~/R/rineasysteps/data")
frame <- read.csv("DataSet-Browsers.csv")

# Extract 4 specific rows
edge <- frame[c(33,24,5,12),]
print(edge)

# Extract 1 row from subset
edge.row <- edge[1,]

# Output the second subset
cat("\nRow...\n")
print(edge.row)

# Confirm the data structure of second subset
cat("Data Frame?:", is.data.frame(edge.row),"/n")

# Extract a third subset to demonstrate non-stickiness of row and column
edge.col <- edge[, 2]
cat("\n\nColumn...\n")
print(edge.col)

# Recreate third subset with behavior override
edge.col <- edge[,2, drop = FALSE]
cat("\n\nColumn...\n")
print(edge.col)

# Confirm data structure of third subset
cat("Data Frame?:",is.data.frame(edge.col),"\tVector?:", is.vector(edge.col))
