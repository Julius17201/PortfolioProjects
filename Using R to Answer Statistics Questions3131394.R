# Assuming the data file is named "data-1234567.csv" and is in my working directory
data <- read.csv("C:/Users/HP/Desktop/MRMP007/data-3131394.csv")

# Display the structure of the data
str(data)

# Display the first few rows of the data
head(data)
# Q1. What is the total number of observations in the dataset? (1.0%)
# Count the total number of observations
total_observations <- nrow(data)
# Print the result
print(total_observations)
# Q2. What is the percentage of gender with the level Male? (1.0%)
# Calculate the percentage of gender with the level Male
percentage_male <- (sum(data$gender == "Male") / nrow(data)) * 100

# Print the result
print(percentage_male)
# Q3. What is the frequency of martial_status with the level Married? (1.0%)
# Calculate the frequency of martial_status with the level Married
frequency_married <- sum(data$martial_status == "Married")

# Print the result
print(frequency_married)
# Q4. What is the frequency of martial_status with the level Cohabiting? (1.0%)
# Calculate the frequency of martial_status with the level Cohabiting
frequency_cohabiting <- sum(data$martial_status == "Cohabiting")

# Print the result
print(frequency_cohabiting)
# Q5. What is the frequency of region with the level West? (1.0%)
# Calculate the frequency of region with the level West
frequency_west <- sum(data$region == "West")

# Print the result
print(frequency_west)
# Q6. What is the frequency of region with the level South? (1.0%)
# Calculate the frequency of region with the level South
frequency_south <- sum(data$region == "South")

# Print the result
print(frequency_south)
# Q7. What is the 90th percentile of expenditure? (1.0%)
# Calculate the 90th percentile of expenditure
percentile_90_expenditure <- quantile(data$expenditure, 0.90)

# Print the result
print(percentile_90_expenditure)
# Q8. What is the standard deviation of annual_income? (1.0%)
# Calculate the standard deviation of annual_income
std_dev_annual_income <- sd(data$annual_income)

# Print the result
print(std_dev_annual_income)
# Q9. What is the mean of price_index? (1.0%)
# Calculate the mean of price_index
mean_price_index <- mean(data$price_index)

# Print the result
print(mean_price_index)
# Q10. What is the 25th percentile of expenditure? (1.0%)
# Calculate the 25th percentile of expenditure
percentile_25_expenditure <- quantile(data$expenditure, 0.25)

# Print the result
print(percentile_25_expenditure)
# Q11. What is the mean of expenditure? (1.0%)
# Calculate the mean of expenditure
mean_expenditure <- mean(data$expenditure)

# Print the result
print(mean_expenditure)
# Q12. What is the maximum of price_index? (1.0%)
# Calculate the maximum of price_index
max_price_index <- max(data$price_index)

# Print the result
print(max_price_index)
# Q13. What is the 75th percentile of age? (1.0%)
# Calculate the 75th percentile of age
percentile_75_age <- quantile(data$age, 0.75)

# Print the result
print(percentile_75_age)
# Q14. What is the correlation between expenditure and age? (1.0%)
# Calculate the correlation between expenditure and age
cor_expenditure_age <- cor(data$expenditure, data$age)

# Print the result
print(cor_expenditure_age)
# Q15. What is the correlation between price_index and annual_income? (1.0%)
# Calculate the correlation between price_index and annual_income
cor_price_index_annual_income <- cor(data$price_index, data$annual_income)

# Print the result
print(cor_price_index_annual_income)
# Q16. What is the median of annual_income conditional on expenditure being greater than or equal to the median of expenditure? (1.5%
# Calculate the median of expenditure
median_expenditure <- median(data$expenditure)

# Subset the data for observations where expenditure is greater than or equal to the median
subset_data <- data[data$expenditure >= median_expenditure, ]

# Calculate the median of annual_income for the subset
median_annual_income_conditional <- median(subset_data$annual_income)

# Print the result
print(median_annual_income_conditional)
# Q17. What is the 25th percentile of age conditional on annual_income being less than or equal to the mean of annual_income? (1.5%)
# Calculate the mean of annual_income
mean_annual_income <- mean(data$annual_income)

# Subset the data for observations where annual_income is less than or equal to the mean
subset_data <- data[data$annual_income <= mean_annual_income, ]

# Calculate the 25th percentile of age for the subset
percentile_25_age_conditional <- quantile(subset_data$age, 0.25)

# Print the result
print(percentile_25_age_conditional)
# Q18. What is the variance of price_index conditional on expenditure being less than or equal to the mean of expenditure? (1.5%)
# Calculate the mean of expenditure
mean_expenditure <- mean(data$expenditure)

# Subset the data for observations where expenditure is less than or equal to the mean
subset_data <- data[data$expenditure <= mean_expenditure, ]

# Calculate the variance of price_index for the subset
variance_price_index_conditional <- var(subset_data$price_index)

# Print the result
print(variance_price_index_conditional)
# Q19. What is the median of expenditure conditional on martial_status having the level Single? (1.5%)
# Subset the data for observations where martial_status is Single
subset_data <- data[data$martial_status == "Single", ]

# Calculate the median of expenditure for the subset
median_expenditure_conditional <- median(subset_data$expenditure)

# Print the result
print(median_expenditure_conditional)
# Q20. What is the 25th percentile of expenditure conditional on age being less than the mean of age? (1.5%)
# Calculate the mean of age
mean_age <- mean(data$age)

# Subset the data for observations where age is less than the mean
subset_data <- data[data$age < mean_age, ]

# Calculate the 25th percentile of expenditure for the subset
percentile_25_expenditure_conditional <- quantile(subset_data$expenditure, 0.25)

# Print the result
print(percentile_25_expenditure_conditional)
# Q21. What is the variance of annual_income conditional on education_attainment having the level Degree? (1.5%)
# Subset the data for observations where education_attainment is Degree
subset_data <- data[data$education_attainment == "Degree", ]

# Calculate the variance of annual_income for the subset
variance_annual_income_conditional <- var(subset_data$annual_income)

# Print the result
print(variance_annual_income_conditional)
# Q22. What is the variance of age conditional on age being less than or equal to the median of age? (1.5%)
# Calculate the median of age
median_age <- median(data$age)

# Subset the data for observations where age is less than or equal to the median
subset_data <- data[data$age <= median_age, ]

# Calculate the variance of age for the subset
variance_age_conditional <- var(subset_data$age)

# Print the result
print(variance_age_conditional)
# Q23. What is the mean of expenditure conditional on age being less than or equal to the median of age? (1.5%)
# Calculate the median of age
median_age <- median(data$age)

# Subset the data for observations where age is less than or equal to the median
subset_data <- data[data$age <= median_age, ]

# Calculate the mean of expenditure for the subset
mean_expenditure_conditional <- mean(subset_data$expenditure)

# Print the result
print(mean_expenditure_conditional)
# Q24. What is the t-score that corresponds to the confidence level for this sample (assume α = 0.05)? (2.0%)

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the t-score for a 95% confidence level
t_score <- qt(0.975, df)

# Print the result
print(t_score)
# Q25. What is the upper bound of the confidence interval for price_index? (2.0%)
# Calculate the mean and standard error of price_index
mean_price_index <- mean(data$price_index)
se_price_index <- sd(data$price_index) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the margin of error
margin_of_error <- qt(0.975, df) * se_price_index

# Calculate the upper bound of the confidence interval
upper_bound <- mean_price_index + margin_of_error

# Print the result
print(upper_bound)
# Q26. What is the standard error of the mean for expenditure? (2.0%)
# Calculate the standard error of the mean for expenditure
se_mean_expenditure <- sd(data$expenditure) / sqrt(nrow(data))

# Print the result
print(se_mean_expenditure)
# Q27. What is the lower bound of the confidence interval for annual_income? (2.0%)
# Calculate the mean and standard error of annual_income
mean_annual_income <- mean(data$annual_income)
se_annual_income <- sd(data$annual_income) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the margin of error
margin_of_error <- qt(0.975, df) * se_annual_income

# Calculate the lower bound of the confidence interval
lower_bound <- mean_annual_income - margin_of_error

# Print the result
print(lower_bound)
# Q28. What is the upper bound of the confidence interval for annual_income? (2.0%)
# Calculate the mean and standard error of annual_income
mean_annual_income <- mean(data$annual_income)
se_annual_income <- sd(data$annual_income) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the margin of error
margin_of_error <- qt(0.975, df) * se_annual_income

# Calculate the upper bound of the confidence interval
upper_bound <- mean_annual_income + margin_of_error

# Print the result
print(upper_bound)
# Q29. Construct hypotheses for testing the mean of age relative to 35. What is the t-statistic of your test at the 95% confidence level? (2.5%)
# Calculate the mean and standard error of age
mean_age <- mean(data$age)
se_age <- sd(data$age) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_age - 35) / se_age

# Print the result
print(t_statistic)
# Q30. Construct hypotheses for testing the mean of expenditure relative to 14. What is the t-statistic of your test at the 99% confidence level? (2.5%)
# Calculate the mean and standard error of expenditure
mean_expenditure <- mean(data$expenditure)
se_expenditure <- sd(data$expenditure) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_expenditure - 14) / se_expenditure

# Calculate the critical t-value for a two-tailed test at 99% confidence level
critical_t_value <- qt(0.995, df)

# Print the result
print(t_statistic)
# Q31. Construct hypotheses for testing the mean of annual_income relative to 60,000. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Calculate the mean and standard error of annual_income
mean_annual_income <- mean(data$annual_income)
se_annual_income <- sd(data$annual_income) / sqrt(nrow(data))

# Degrees of freedom (assuming a large enough sample size)
df <- nrow(data) - 1

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_annual_income - 60000) / se_annual_income

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q32. Construct hypotheses for testing the mean of age conditional on region having the level East relative to the mean of age conditional on region having the level West. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Subset data for regions East and West
age_east <- data$age[data$region == "East"]
age_west <- data$age[data$region == "West"]

# Calculate the mean and standard deviation for age in regions East and West
mean_age_east <- mean(age_east)
mean_age_west <- mean(age_west)
sd_age_east <- sd(age_east)
sd_age_west <- sd(age_west)

# Sample sizes for regions East and West
n_east <- length(age_east)
n_west <- length(age_west)

# Calculate the pooled standard error
pooled_se <- sqrt(((((n_east - 1) * sd_age_east^2) + ((n_west - 1) * sd_age_west^2)) / (n_east + n_west - 2)) * ((1 / n_east) + (1 / n_west)))

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_age_east - mean_age_west) / pooled_se

# Degrees of freedom for the pooled variance t-test
df <- n_east + n_west - 2

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q33. Construct hypotheses for testing the mean of price_index conditional on region having the level North relative to the mean of price_index conditional on region having the level West. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Subset data for regions North and West
price_index_north <- data$price_index[data$region == "North"]
price_index_west <- data$price_index[data$region == "West"]

# Calculate the mean and standard deviation for price_index in regions North and West
mean_price_index_north <- mean(price_index_north)
mean_price_index_west <- mean(price_index_west)
sd_price_index_north <- sd(price_index_north)
sd_price_index_west <- sd(price_index_west)

# Sample sizes for regions North and West
n_north <- length(price_index_north)
n_west <- length(price_index_west)

# Calculate the pooled standard error
pooled_se <- sqrt(((((n_north - 1) * sd_price_index_north^2) + ((n_west - 1) * sd_price_index_west^2)) / (n_north + n_west - 2)) * ((1 / n_north) + (1 / n_west)))

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_price_index_north - mean_price_index_west) / pooled_se

# Degrees of freedom for the pooled variance t-test
df <- n_north + n_west - 2

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q34. Construct hypotheses for testing the mean of expenditure conditional on employment_status having the level Part time relative to the mean of expenditure conditional on employment_status having the level Retired. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Subset data for employment statuses Part time and Retired
expenditure_part_time <- data$expenditure[data$employment_status == "Part time"]
expenditure_retired <- data$expenditure[data$employment_status == "Retired"]

# Calculate the mean and standard deviation for expenditure in employment statuses Part time and Retired
mean_expenditure_part_time <- mean(expenditure_part_time)
mean_expenditure_retired <- mean(expenditure_retired)
sd_expenditure_part_time <- sd(expenditure_part_time)
sd_expenditure_retired <- sd(expenditure_retired)

# Sample sizes for employment statuses Part time and Retired
n_part_time <- length(expenditure_part_time)
n_retired <- length(expenditure_retired)

# Calculate the pooled standard error
pooled_se <- sqrt(((((n_part_time - 1) * sd_expenditure_part_time^2) + ((n_retired - 1) * sd_expenditure_retired^2)) / (n_part_time + n_retired - 2)) * ((1 / n_part_time) + (1 / n_retired)))

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_expenditure_part_time - mean_expenditure_retired) / pooled_se

# Degrees of freedom for the pooled variance t-test
df <- n_part_time + n_retired - 2

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q35. Construct hypotheses for testing the mean of price_index conditional on employment_status having the level Part time relative to the mean of price_index conditional on employment_status having the level Unemployed. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Subset data for employment statuses Part time and Unemployed
price_index_part_time <- data$price_index[data$employment_status == "Part time"]
price_index_unemployed <- data$price_index[data$employment_status == "Unemployed"]

# Calculate the mean and standard deviation for price_index in employment statuses Part time and Unemployed
mean_price_index_part_time <- mean(price_index_part_time)
mean_price_index_unemployed <- mean(price_index_unemployed)
sd_price_index_part_time <- sd(price_index_part_time)
sd_price_index_unemployed <- sd(price_index_unemployed)

# Sample sizes for employment statuses Part time and Unemployed
n_part_time <- length(price_index_part_time)
n_unemployed <- length(price_index_unemployed)

# Calculate the pooled standard error
pooled_se <- sqrt(((((n_part_time - 1) * sd_price_index_part_time^2) + ((n_unemployed - 1) * sd_price_index_unemployed^2)) / (n_part_time + n_unemployed - 2)) * ((1 / n_part_time) + (1 / n_unemployed)))

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_price_index_part_time - mean_price_index_unemployed) / pooled_se

# Degrees of freedom for the pooled variance t-test
df <- n_part_time + n_unemployed - 2

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q36. Construct hypotheses for testing the mean of expenditure conditional on martial_status having the level Cohabiting relative to the mean of expenditure conditional on martial_status having the level Single. What is the t-statistic of your test at the 90% confidence level? (2.5%)
# Subset data for martial statuses Cohabiting and Single
expenditure_cohabiting <- data$expenditure[data$martial_status == "Cohabiting"]
expenditure_single <- data$expenditure[data$martial_status == "Single"]

# Calculate the mean and standard deviation for expenditure in martial statuses Cohabiting and Single
mean_expenditure_cohabiting <- mean(expenditure_cohabiting)
mean_expenditure_single <- mean(expenditure_single)
sd_expenditure_cohabiting <- sd(expenditure_cohabiting)
sd_expenditure_single <- sd(expenditure_single)

# Sample sizes for martial statuses Cohabiting and Single
n_cohabiting <- length(expenditure_cohabiting)
n_single <- length(expenditure_single)

# Calculate the pooled standard error
pooled_se <- sqrt(((((n_cohabiting - 1) * sd_expenditure_cohabiting^2) + ((n_single - 1) * sd_expenditure_single^2)) / (n_cohabiting + n_single - 2)) * ((1 / n_cohabiting) + (1 / n_single)))

# Calculate the t-statistic for the hypothesis test
t_statistic <- (mean_expenditure_cohabiting - mean_expenditure_single) / pooled_se

# Degrees of freedom for the pooled variance t-test
df <- n_cohabiting + n_single - 2

# Calculate the critical t-value for a two-tailed test at 90% confidence level
critical_t_value <- qt(0.95, df)

# Print the result
print(t_statistic)
# Q37. What is the value of the R^2? (2.5%)
# Fit the multiple linear regression model
model <- lm(expenditure ~ gender + age + education_attainment + annual_income + region, data = data)

# Print the summary of the regression model
summary(model)
# Q38. What is the standard error of Primary? (2.5%)

# Extract the summary of the regression model
summary_data <- summary(model)

# Find the standard error for the level "Primary" of education_attainment
se_primary <- summary_data$coefficients["education_attainmentPrimary", "Std. Error"]

# Print the result
print(se_primary)
# Q39. What is the coefficient of Primary? (2.5%)

# Extract the summary of the regression model
summary_data <- summary(model)

# Find the coefficient for the level "Primary" of education_attainment
coef_primary <- summary_data$coefficients["education_attainmentPrimary", "Estimate"]

# Print the result
print(coef_primary)
# Q40. What is the p-value of Primary? (2.5%)

# Extract the summary of the regression model
summary_data <- summary(model)

# Find the p-value for the level "Primary" of education_attainment
p_value_primary <- summary_data$coefficients["education_attainmentPrimary", "Pr(>|t|)"]

# Print the result
print(p_value_primary)
# Q41. Predicted difference in average daily food expenditure (2.5%)

# Create a data frame with the specific scenarios
scenario_data <- data.frame(
  gender = "Male",  # Assuming a default value for gender
  age = c(50, 65),
  education_attainment = c("Degree", "Secondary"),
  annual_income = mean(data$annual_income),  # Assuming the mean annual income
  region = "East"  # Assuming a default value for region
)

# Predict average daily food expenditure for each scenario
predicted_expenditure <- predict(model, newdata = scenario_data)

# Calculate the predicted difference
predicted_difference <- diff(predicted_expenditure)

# Print the result
print(predicted_difference)
# Q42. Predicted difference in average daily food expenditure (2.5%)

# Create a data frame with the specific scenarios
scenario_data <- data.frame(
  gender = "Male",  # Assuming a default value for gender
  age = c(35, 60),
  education_attainment = c("Post graduate degree", "Secondary"),
  annual_income = mean(data$annual_income),  # Assuming the mean annual income
  region = "East"  # Assuming a default value for region
)

# Predict average daily food expenditure for each scenario
predicted_expenditure <- predict(model, newdata = scenario_data)

# Calculate the predicted difference
predicted_difference <- diff(predicted_expenditure)

# Print the result
print(predicted_difference)
# Q43. Predicted difference in average daily food expenditure (2.5%)

# Create a data frame with the specific scenarios
scenario_data <- data.frame(
  gender = "Male",  # Assuming a default value for gender
  age = c(35, 55),
  education_attainment = c("Primary", "Secondary"),
  annual_income = mean(data$annual_income),  # Assuming the mean annual income
  region = "East"  # Assuming a default value for region
)

# Predict average daily food expenditure for each scenario
predicted_expenditure <- predict(model, newdata = scenario_data)

# Calculate the predicted difference
predicted_difference <- diff(predicted_expenditure)

# Print the result
print(predicted_difference)
# Q44. Upper bound of the confidence interval of age (2.5%)

# Extract the summary of the regression model
summary_data <- summary(model)

# Find the upper bound of the confidence interval for age
coef_age <- coef(summary_data)["age", ]
upper_bound_age <- coef_age[1] + qt(0.975, df = summary_data$df.residual) * coef_age[2]

# Print the result
print(upper_bound_age)
# Q45. Upper bound of the confidence interval of Secondary at the 90% confidence level (2.5%)

# Extract the summary of the regression model
summary_data <- summary(model)

# Find the column name for "Secondary" in the coefficients
secondary_col_name <- grep("education_attainmentSecondary", rownames(summary_data$coefficients), value = TRUE)

# Find the upper bound of the confidence interval for Secondary
coef_secondary <- as.numeric(coef(summary_data)[secondary_col_name, ])
upper_bound_secondary <- coef_secondary[1] + qt(0.95, df = summary_data$df.residual) * coef_secondary[2]

# Print the result
print(upper_bound_secondary)
# Q46. Upper bound of the confidence interval of West at the 95% confidence level (2.5%)

# Find the column name for "West" in the coefficients
west_col_name <- grep("regionWest", rownames(summary_data$coefficients), value = TRUE)

# Find the upper bound of the confidence interval for West
coef_west <- as.numeric(coef(summary_data)[west_col_name, ])
upper_bound_west <- coef_west[1] + qt(0.975, df = summary_data$df.residual) * coef_west[2]

# Print the result
print(upper_bound_west)
# Q48. Predicted average daily food expenditure where gender = Male, age = 20, education_attainment = Post graduate degree, annual_income = 60,000 and region = West (2.5%)

# Create a new data frame with the given values
new_data <- data.frame(
  gender = "Male",
  age = 20,
  education_attainment = "Post graduate degree",
  annual_income = 60000,
  regionWest = 1  # 1 indicates the region is West
)

# Predict the average daily food expenditure
predicted_expenditure <- predict(model, newdata = new_data)

# Print the result
print(predicted_expenditure)

# Q49. Predicted average daily food expenditure where gender = Female, age = 60, education_attainment = Primary, annual_income = 80,000, and region = South (2.5%)

# Create a new data frame with the given values
new_data_female <- data.frame(
  gender = "Female",
  age = 60,
  education_attainment = "Primary",
  annual_income = 80000,
  region = "East"  # Replace "East" with the baseline region level used in your model
)

# Predict the average daily food expenditure
predicted_expenditure_female <- predict(model, newdata = new_data_female)

# Print the result
print(predicted_expenditure_female)
# Q48. Predicted average daily food expenditure where gender = Male, age = 20, education_attainment = Post graduate degree, annual_income = 60,000, and region = West (2.5%)

# Create a new data frame with the given values
new_data_male <- data.frame(
  gender = "Male",
  age = 20,
  education_attainment = "Post graduate degree",
  annual_income = 60000,
  region = "East"  # Replace "East" with the baseline region level used in your model
)

# Predict the average daily food expenditure
predicted_expenditure_male <- predict(model, newdata = new_data_male)

# Print the result
print(predicted_expenditure_male)
# Q50. Predicted average daily food expenditure where gender = Male, age = 40, education_attainment = Degree, annual_income = 60,000, and region = East (2.5%)

# Create a new data frame with the given values
new_data_male_40 <- data.frame(
  gender = "Male",
  age = 40,
  education_attainment = "Degree",
  annual_income = 60000,
  region = "East"  # Replace "East" with the baseline region level used in your model
)

# Predict the average daily food expenditure
predicted_expenditure_male_40 <- predict(model, newdata = new_data_male_40)

# Print the result
print(predicted_expenditure_male_40)
# Q33 redone. Construct hypotheses for testing the mean of price_index conditional on region having the level North relative to the mean of price_index conditional on region having the level West. What is the t-statistic of your test at the 90% confidence level? (2.5%)


# Subset data for North and West regions
north_data <- subset(data, region == "North")
west_data <- subset(data, region == "West")

# Conduct t-test
t_test_result <- t.test(north_data$price_index, west_data$price_index, alternative = "two.sided", conf.level = 0.90)

# Extract t-statistic from the result
t_statistic <- t_test_result$statistic

# Print the t-statistic
cat("T-statistic of the test at the 90% confidence level:", round(t_statistic, 3))

#41 redone
# Fit multiple linear regression model
lm_model <- lm(expenditure ~ gender + age + education_attainment + annual_income + region, data = data)

# Create a data frame for the hypothetical scenarios
scenario_data <- data.frame(
  gender = "Female",  # Assuming Female as the baseline for gender
  age = c(50, 65),
  education_attainment = c("Degree", "Secondary"),
  annual_income = mean(data$annual_income),  # Using the mean income for simplicity
  region = "East"  # Assuming East as the baseline for region
)

# Make predictions for the scenarios
predictions <- predict(lm_model, newdata = scenario_data)

# Calculate the predicted difference
predicted_difference <- predictions[1] - predictions[2]

# Print the result
cat("Predicted difference in average daily food expenditure:", round(predicted_difference, 2))
#44redone
# Fit a linear regression model to estimate the confidence interval for age
lm_model_age <- lm(age ~ 1, data = data)  # Simple model with only intercept

# Calculate the confidence interval for age
age_ci <- confint(lm_model_age, level = 0.95)

# Extract the upper bound of the confidence interval
upper_bound_age_ci <- age_ci[2]

# Print the result
cat("Upper bound of the confidence interval for age at the 95% confidence level:", round(upper_bound_age_ci, 3))
