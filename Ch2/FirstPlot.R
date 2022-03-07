# create two vectors
x <- c(1,3,5,7,9)
y <- c(8,0,4,6,2)

# plot as type "o"
plot(x, y, type = "o")

# create four lists
qtr.1 <- list(Jan = 1500,
              Feb = 1300,
              Mar = 2400)
qtr.2 <- list(Apr = 1800,
              May = 1700,
              Jun = 2800)
qtr.3 <- list(Jul = 3100,
              Aug = 3800,
              Sep = 3200)
qtr.4 <- list(Oct = 2600,
              Nov = 2200,
              Dec = 2400)

# combine into single vector
year <- unlist(c(qtr.1, qtr.2, qtr.3, qtr.4))

# plot without annotation or axes labels
plot(year, type = "o", col = "Blue", pch = 15,
     ann = FALSE, axes = FALSE)

# specify range and annotations for x axis; allow automatic y axis
axis(1, at = 1:12, lab = c(names(year)))
axis(2)

# add labels and title; draw plot frame
title(xlab = "Month", ylab = "$",
      main = "Yearly Sales", col.main = "Red")
box()
