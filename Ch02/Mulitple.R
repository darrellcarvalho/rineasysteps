# This exercise gets into the use of vectors and elements
# month <- c("Jan", "Feb", "Mar")
# month[3] <- "March"
# length(month)
# month[4] <- "April"

# vectors can only contain elements of a single type, and coerce non-conforming
# elements into a basic common type; integers elements in a vector of doubles
# are coerced into double. Numeric elements entered into a character vector are
# coerced into vector elements.

alphabet <- c("Alpha", "Bravo", "Charlie")
# return entire vector
print(alphabet)

# return a string concatenated with the second element
print(paste("2nd Element:", alphabet[2]))

# return a string concatenated with the vector's length
print(paste("Vector Length:", length(alphabet)))

# assign another value to the vector, then output vector and its length
alphabet[5] <- "Echo"
print(alphabet)
print(paste("Vector length now:", length(alphabet)))

# sanity check to confirm vector is a vector
print(paste("Is alphabet a vector:", is.vector(alphabet)))
