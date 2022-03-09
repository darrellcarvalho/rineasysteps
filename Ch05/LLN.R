## This exercise demonstrates the law of large numbers using rnorm()
qty <- 10 # start with 10 randomly generated numbers

# add loop that iterates until qty reaches close to 1 million
while (qty <= 1000000)
{
  num <- 0 # count number of random numbers that fall in range
  for (i in rnorm(qty))
    # for each randomly generated number
  {
    if ((i >= -1) && (i <= 1))
      num <- (num + 1) # if in range, increase counter
  }
  num <- (num / (qty / 100)) # compute proportion that fell in range
  cat("For", qty, "Generated Random Numbers:", num, "%\n")
  qty <- (qty * 10) # increase number of randoms generated
}
