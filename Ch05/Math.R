## This exercise demonstrates important built-in functions for mathematics in R

# Display the constant, pi

cat("Pi Constant =", pi, "\n")

# display pi rounded down, up, and to two decimals
cat("Pi Floor\t", floor(pi), "\n")
cat("Pi Ceiling\t", ceiling(pi), "\n")
cat("Pi Rounded\t", round(pi, digits = 2), "\n\n")

# create num variable
num <- 64
cat("Square Root of", num, "=", sqrt(num), "\n\n")

# angles are represented in radians.
num <- (120 * (pi/180))
cat("Cosine of 120° =",cos(num), "\n\n")

# assign the natural log of 100
num <- log(100)
cat("Log of", exp(num),"=",num,"\n")
