# This exercise demonstrates comparison of multiple vectors

# create two sequence variables
ascend <- c(1:5)
descend <- c(5:1)

# output the sequences on new lines
cat("Vectors:\n",ascend,"\n",descend)

# compare vectors
result <- ascend > descend

# output the bool vector
cat("\n1st Vector Greater?:", result)

# output index of TRUE results
cat("\nAt Index No.:", which(result))

# create two vectors - one with pets, the other with general animals
pets <- c("Dog", "Cat", "Gerbil", "Rabbit")
animals <- c("Lion", "Tiger", "Cat", "Rabbit")

# output the element values formatted with newlines
cat("\n\nVectors:\n", pets,"\n", animals)

# compare the two vectors
result <- pets == animals

# output the bool values
cat("\nElement Match?:", result)

# output the index of the TRUE value
cat("\nAt Index No.:", which(result))

# output values that match elements in either of the two vectors
cat("\nCommon:", intersect(pets, animals))

## Note that cat is in both vectors, but didn't return TRUE in the bool test
## because the cats are not at the same index in each vector
