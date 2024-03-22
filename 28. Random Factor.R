set.seed(123)
random_factor <- factor(sample(LETTERS, 20, replace = TRUE))
five_levels <- levels(random_factor)[1:5]
print(five_levels)