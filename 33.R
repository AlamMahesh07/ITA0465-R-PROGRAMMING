# Load the airquality dataset
data(airquality)

# (i) Compute the mean temperature without using built-in function
mean_temperature <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean Temperature:", mean_temperature, "\n")

# (ii) Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# (iii) Extract all columns from airquality except Temp and Wind
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
head(selected_columns)

# (iv) Find the coldest day during the period
coldest_day <- airquality$Day[which.min(airquality$Temp)]
cat("Coldest Day:", coldest_day, "\n")

# (v) Count the number of days with wind speed greater than 17 mph
wind_speed_gt_17 <- sum(airquality$Wind > 17, na.rm = TRUE)
cat("Number of days with wind speed greater than 17 mph:", wind_speed_gt_17, "\n")