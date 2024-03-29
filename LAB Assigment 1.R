# Load tidyverse package for data manipulation
library(tidyverse)

# Load tidymodels package for modeling
library(tidymodels)

# Load janitor package for data cleaning
library(janitor)

# Read in the student data
students_data <- read_csv("studentInfo.csv")

# Mutate target variable
students_data <- students_data %>%
  mutate(pass_status = ifelse(final_result == "Pass", 1, 0)) %>%
  mutate(pass_status = as.factor(pass_status))

# Convert 'disability' to a factor
students_data <- students_data %>%
  mutate(disability_status = as.factor(disability))

# Explore the dataset
students_data

# Feature engineering: Convert 'imd_band' to factor and then integer
students_data <- students_data %>%
  mutate(imd_band_factor = factor(imd_band, levels = c("0-10%", "10-20%", "20-30%", "30-40%", "40-50%", "50-60%", "60-70%", "70-80%", "80-90%", "90-100%"))) %>%
  mutate(imd_band_numeric = as.integer(imd_band_factor))

# Split the data into training and testing sets
set.seed(20230712)
train_test_split <- initial_split(students_data, prop = 0.80)
train_data <- training(train_test_split)
test_data <- testing(train_test_split)

# Create a recipe for modeling
my_recipe <- recipe(pass_status ~ disability_status + imd_band_numeric, data = train_data)

# Specify the logistic regression model
my_model <- 
  logistic_reg() %>% 
  set_engine("glm") %>% 
  set_mode("classification")

# Add model and recipe to the workflow
my_workflow <- 
  workflow() %>% 
  add_model(my_model) %>% 
  add_recipe(my_recipe)

# Fit the model to the training data
fitted_model <- fit(my_workflow, data = train_data)

# Create a resampling object for the testing data
test_split <- rsample::initial_split(test_data, prop = 0.8)

# Fit the model using the testing data
final_evaluation <- last_fit(my_workflow, split = test_split)

# View the final fitted model
final_evaluation

# Collect predictions
final_evaluation %>%
  collect_predictions()

# Interpret accuracy
final_evaluation %>%
  collect_predictions() %>%
  select(.pred_class, pass_status) %>%
  mutate(correct_prediction = .pred_class == pass_status) %>%
  tabyl(correct_prediction)

# End of code - Wrapping up and preparing to knit the document
