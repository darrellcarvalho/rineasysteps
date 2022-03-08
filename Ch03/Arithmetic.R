## This exercise demonstrates how to do arithmetic within R

# create two variables holding integers
large <- 5
small <- 2

# perform and utput some basic arithmetic statements
print(paste("Addition:", large + small))
print(paste("Subtraction:", large - small))
print(paste("Multiplication:", large * small))

# now perform two division operations
print(paste("Division:", large / small))
print(paste("Integer Division:", large %/% small))

## now perform exponentiation
print(paste("Exponentiation:", large ^ small))

## now compute the remainder from division
print(paste("Remainder:", large %% small))
