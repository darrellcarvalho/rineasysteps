## This exercise demonstrates operating on elements in vectors

# create vector with sequence one to nine
series <- c(1:9)

# output text string, elements from sequence, and newline
cat("Series:", series, "\n")

# create a variable slicing first variable
slice <- series[1:3]

# output slice
cat("Slice:", slice, "\n")

# now sum the two variables
totals <- series + slice

# output totals
cat("Totals:", totals, "\n")

# extend slice and output extended slice
slice <- series[1:4]
cat("New Slice:", slice, "\n")

# recalculate total with new slice
totals <- series + slice
cat("New Totals", totals, "\n")

# note warning; important when dealing with vectors of lengths that are not
# multiples

# Warning message:
#   In series + slice :
#   longer object length is not a multiple of shorter object length
