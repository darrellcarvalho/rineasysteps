## This exercise demonstrates for loops in R

# create a variable which contains a list sequence of characters
seq <- list(A = "Alpha", B = "Bravo", C = "Charlie")

# add a for loop iterating over the sequence
for (var in seq)
{
  print(var)
}

# assign vector of integers to variable
seq <- c(2, 7, 6, 8, 3, 5, 4)

# iterate over sequence to determine whether it is odd or even
for (var in seq)
{
  if (var %% 2 == 1)
  {
    cat(var, "Is Odd\n")
  } else
  {
    cat(var, "Is Even\n")
  }
}
