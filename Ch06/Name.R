## This exercise demonstrates how to name rows and columns in R

# create three vectors
ny <- c(3.8, 5.5, 9.9, 15.7, 21.5, 26.3)
la <- c(19.5, 19.4, 19.7, 20.8, 21.3, 22.7)
fw <- c(13.7, 15.4, 20.0, 24.6, 28.5, 32.7)

# create and output matrix
table <- rbind(ny, la, fw)
print(table)

# assign row labels and column headings
rownames(table) <- c("New York", "Los Angeles", "Fort Worth")
colnames(table) <- month.abb[1:6]

# output named matrix
cat("\nAverage High Temperature (°C):\n\n")
print(table)

# create a new vector to store row of data
nyc <- table["New York",]
cat("\nNew York:", nyc, "\n\n")

# display contents of new vector
print(nyc)
