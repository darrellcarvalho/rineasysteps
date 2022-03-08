## This exercise demonstrates the functioning of while loops

# set initial condition
sum <- 0

# create a counter that increases in increments until some threshold is met
i <- 1
while (i < 4)
{
  sum <- (sum + 1) # increase sum by 1
  cat("Outer Loop i =", i, "\t\tTotal =", sum, "\n") # describe loop state
  i <- (i + 1) # increase count by one

  j <- 1
  # add inner loop; as long as j is below threshold, we stay in one loop of
  # the outer. Once this threshold is passed, we move on to the second outer
  # loop, and start the inner loop from scratch.
  while (j < 4)
  {
    sum <- (sum + 1)
    cat("\tInner Loop j =", j,"\tTotal =", sum, "\n")
    j <- (j + 1)
  }
}
