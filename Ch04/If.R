## This exercise demonstrates if-statement functionality in R

# create if statement testing numerical inequality
if (5 > 1)
{
  print("Five is greater than one.")
}

# create second inequality test
if (2 < 4)
{
  print("Two is less than four.");
  print("Test succeeded.");
}

# create conditional expression using AND operator && or OR operator ||
num <- 8
if ((num > 5) && (num < 10) || (num == 12))
{
  print("Number is 6-9 inclusive, or 12.")
}

# demonstrate lack of output if FALSE
num <- 14

if ((num > 5) && (num < 10) || (num == 12))
{
  print("Number is 6-9 inclusive, or 12.")
}
