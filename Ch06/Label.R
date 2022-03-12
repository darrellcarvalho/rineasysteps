## This exercise demonstrates adding lables via matplot
# create three vectors
ny <- c(3.8, 5.5, 9.9, 15.7, 21.5, 26.3)
la <- c(19.5, 19.4, 19.7, 20.8, 21.3, 22.7)
fw <- c(13.7, 15.4, 20.0, 24.6, 28.5, 32.7)

# store in matrix
table <- cbind(ny, la, fw)
print(table)

# plot using matplot()
matplot(table, type = "b", pch = 15:17, col = 2:4)

# add column and row names
colnames(table) <- c("New York","Los Angeles", "Fort Worth")
rownames(table) <- month.abb[1:6] # typo in book results in month:abb
print(table)

# call matplot with added arguments
matplot(table,
        type = "b",
        pch = 15:17,
        col = 2:4,
        xlab = "Months",
        ylab = "Average High (°C)",
        xlim = c(1,6),
        ylim = c(0,35),
        axes = FALSE,
        main = "City Temperature Comparison")

# create axis labels and add legend
axis(1, at = 1:6, labels = rownames(table))
axis(2)
legend("topleft",
       inset = 0.2,
       pch = 15:17,
       col = 2:4,
       legend = colnames(table))
