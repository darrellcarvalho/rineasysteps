## The purpose of this exercise is to demonstrate else if statements to provide
## chained branches in r

# set initial variable
hour <- 21

# set initial statement
if (hour < 13)
{
  print(paste("Good Morning:", hour))
} else if (hour < 18)
  {
    print(paste("Good Afternoon:", hour))
  } else
    {
      print(paste("Good Evening:", hour))
    }
