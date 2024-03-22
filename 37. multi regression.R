# Load necessary libraries
library(stats)

# Load dataset named ChickWeight
data(ChickWeight)

# Convert 'Diet' to factor if it's not already
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# (a) Create multi regression model to find weight of the chicken by “Time” and “Diet” as predictor variables
multi_regression_model <- lm(weight ~ Time + Diet, data = ChickWeight)
summary(multi_regression_model)

# (b) Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(multi_regression_model, newdata = new_data)
print(predicted_weight)

# (c) Find the error in model for same
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- actual_weight - predicted_weight
print(error)