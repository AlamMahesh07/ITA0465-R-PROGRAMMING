# Given values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# 2nd highest
second_highest <- sort(unique(values), decreasing = TRUE)[2]
cat("2nd Highest Value:", second_highest, "\n")

# 3rd lowest
third_lowest <- sort(unique(values))[3]
cat("3rd Lowest Value:", third_lowest, "\n")