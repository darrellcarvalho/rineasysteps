## This exercises demonstrates the use of the break keyword to terminate loops
## and the next keyword to skip iteration on met condition
for (i in 1:3)
{
  for (j in 1:3)
  {
    if (i == 1 && j == 1)
    {
      cat("Skips iteration at i=", i, "j=", j, "\n")
      next
    }
    if (i == 2 && j == 1)
    {
      cat("Breaks Inner Loop at i=", i, "j=", j, "\n")
      break
    }
    cat("Running i=", i, "j=", j, "\n")
  }
}
