# Load necessary libraries
library(caTools)  # For splitting the dataset
library(nnet)     # For logistic regression
library(caret)    # For confusion matrix

# Set seed for reproducibility
set.seed(123)

# Randomly sample the iris dataset
split <- sample.split(iris$Species, SplitRatio = 0.8)

# Split the dataset into training and test sets
train_data <- iris[split, ]
test_data <- iris[!split, ]

# Create logistic regression model
logistic_model <- multinom(Species ~ Petal.Width + Petal.Length, data = train_data)

# Predict probabilities using test data
predicted_probabilities <- predict(logistic_model, newdata = test_data, type = "probs")

# Get predicted class
predicted_class <- colnames(predicted_probabilities)[apply(predicted_probabilities, 1, which.max)]

# Create confusion matrix
conf_matrix <- confusionMatrix(predicted_class, test_data$Species)
conf_matrix