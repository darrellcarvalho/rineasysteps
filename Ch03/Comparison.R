## This exercise shows the function of comparison operators
# create three variables of type INT
nil <- 0
num <- 0
max <- 1

# create two variables of type CHA
cap <- "A"
low <- "a"

# perform equality comparisons
print(paste("0 == 0 Equality:", nil == num))
print(paste("A == a Equality:", cap == low))


# perform inequality comparison
print(paste("0 != 1 Inequality:", nil != max))

# perform greater-than and less-than comparisons
print(paste("0 > 1 Greater:", nil > max))
print(paste("0 < 1 Less:", nil < max))

# perform greater-than-or-equal and less-than-or-equal comparisons
print(paste("0 >= Greater or Equal:", nil >= num))
print(paste("1 <= Less or Equal:", max <= nil))
