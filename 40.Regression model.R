df <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)
print(df)
regression_model <- lm(Sales ~ Spends, data = df)
summary(regression_model)
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(regression_model, newdata = new_data)
print(predicted_sales)
