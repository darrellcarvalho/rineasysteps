## This exercise demonstrates ways of manipulating elements within vectors

# create fruit vector

fruit <- c("Banana", "Apple", "Cherry")

# output elements in their order in the vector
cat("Fruit:", fruit, "\n")

# sort the elements, then output
fruit <- sort(fruit)
cat("Sorted:", fruit, "\n")

# create a vector of numeric elements
nums <- c(NA, 8:2, NA, 1:7, NA)

# output the values
cat("Numbers:", nums, "\n")

# sort the elements, then output
nums <- sort(nums, na.last = TRUE) # use na.last, missing values are removed
cat("Increasing:", nums, "\n")

# reverse the sort, then output
nums <- rev(nums)
cat("Reversed:", nums, "\n")

# store only uniques, then output
nums <- unique(nums)
cat("Unique:", nums, "\n")
