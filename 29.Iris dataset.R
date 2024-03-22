# Load the iris dataset
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features
# Dimension
dim(iris)

# Structure
str(iris)

# Summary statistics
summary(iris)

# Standard Deviation
apply(iris[, 1:4], 2, sd)

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
# Group by Species and calculate mean and standard deviation
aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))

# (iii) Find quantile value of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)

# (iv) Create new data frame named iris1 with a new column named Sepal.Length.Cate that categorizes Sepal.Length by quantile
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length))
head(iris1)

# (V) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(x, na.rm = TRUE))

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
pivot_table <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = length)
print(pivot_table)