## This exercise demonstrates working with factors and levels in R

# create a data frame
frame <- data.frame(1:5, sizes = c("S", "L", "XL", "S", "M"))

# output the structure of data frame column to see its factors
# the data frame feels superfluous for most of the exercise
cat("\nColumn Data...\n")
str(frame$sizes)

# create a vector
var.sizes <- c("S", "L", "XL", "S", "M")

# output vector structure
cat("\nVector Data...\n")
str(var.sizes)

# reproduce the vector to give factor/ranking levels
var.sizes <- factor(var.sizes)

# output the vector structure once more
cat("\nFactored Vector Data...\n")
str(var.sizes)
print(levels(var.sizes))

# now create factors and levels in ranking order
var.sizes <- factor(var.sizes, levels = c("S", "M", "L", "XL"))

# output again
cat("\nRe-ordered Factored Vector Data...\n")
str(var.sizes)
print(levels(var.sizes))

# Finally, reverse sort and output
var.sizes <- factor(var.sizes, levels = rev(levels(var.sizes)))
cat("\nReversed Factored Vector Data...\n")
str(var.sizes)
print(levels(var.sizes))
