## This exercise demonstrates operator precedence

# store an arithmetical expression in variable sum
sum <- 1 + 4 * 3

# print output as "Default Order"
print(paste("Default Order:", sum))

# now clarify with parentheses
sum <- (1 + 4) * 3

# print output as "Forced Order"
print(paste("Forced Order:", sum))

# now write a statement with operators that have the same precedence
sum <- 7 - 4 + 2

# now output "Default Direction"
print(paste("Default Direction:", sum))

# now clarify with parentheses
sum <- 7 - (4 + 2)

# output as "Forced Direction"
print(paste("Forced Direction:", sum))
