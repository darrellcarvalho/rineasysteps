## This exercise demonstrates the construction of data frames from scratch

# create three vectors
bools <- c(TRUE, FALSE, TRUE)
chars <- LETTERS[1:3]
nums <- 1:3

# create a data frame storing the vectors, print data frame and type test
frame <- data.frame(bools, chars, nums)
print(frame)
cat("\nData Frame?:", is.data.frame(frame), "\n\n")

# name the rows and columns
rownames(frame) <- c("Tier 1:", "Tier 2:", "Tier 3:")
colnames(frame) <- c("Logical", "Alphabetical", "Numerical")

# re-assign a cell's value
frame[2,2] <- "A"
print(frame)

# search for a specific value, return location of value
cat("Search for 'A'...\n")
print(which(frame == "A", arr.ind = TRUE))
