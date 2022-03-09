## This exercise demonstrates runif() - random uniform

# create variable rand, assign a single random number to it
rand <- runif(1)
cat("Random Number:\t\t", rand, "\n")

# multiply variable by 10 to increase its range
rand <- rand * 10
cat("Multiplied Number:\t", rand, "\n")

# round the variable value
rand <- ceiling(rand)
cat("Random Integer:\t\t", rand, "\n\n")
