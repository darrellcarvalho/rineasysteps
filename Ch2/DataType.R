# This lesson focuses on R's "atomic" data types - character, double/float, int,
# and boolean

# Character type, aka strings
title <- "R for Data Analysis"
result <- paste("Type of title:", typeof(title)) # type check, function nesting
print(result)

# floating point double
pi <- 3.14159265
print(paste("Type of pi:", typeof(pi)))

# integer
dozen <- 12L
print(paste("Type of dozen:", typeof(dozen)))

flag <- T
print(paste("Is flag logical:", is.logical(flag)))
