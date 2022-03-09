## This exercise demonstrates some key stats functions in R

# create a vector of 20 normally distributed randomly generaed numbers with
# mean 5 and sd 2
nums <- rnorm(20, mean = 5, sd = 2)

# output the mean and median

cat("Mean:\t", mean(nums), "\n")
cat("Median:\t", median(nums), "\n")

# output the actual standard deviation of the numbers
cat("Actual SD:\t", sd(nums), "\n\n")

# output quartile break points
cat("Cut Points:\t", quantile(nums), "\n")

# output the sum total
cat("Total:\t", sum(nums), "\n\n")

# output the min, max, and range
cat("Range:\t\t", range(nums), "\n")
cat("Minimum:\t", min(nums), "\n")
cat("Maximum:\t", max(nums), "\n")

# plot the numbers to visualize their distribution
plot(nums, type = "o")
