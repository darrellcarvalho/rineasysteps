## This exercise demonstrates the use of else in if-else branching code

# create variable hour and store 11
hour <- 21

# set initial conditional
if (hour < 13)
{
  print(paste("Good Morning:", hour))
} else # set first else branch
{
  if (hour < 18)
    print(paste("Good Afternoon:", hour))
  else # set final else branch
  {
    print(paste("Good Evening:", hour))
  }
}
