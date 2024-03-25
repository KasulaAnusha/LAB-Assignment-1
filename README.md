Student Performance Prediction Model README

Overview

This repository contains code for building and evaluating a logistic regression model to predict student performance based on demographic and socioeconomic factors. The model is built using R and leverages the tidyverse, tidymodels, and janitor packages for data manipulation, modeling, and analysis.

Dataset

The dataset used for this analysis is stored in a CSV file named studentInfo.csv. It contains information about students, including their final result (pass/fail), disability status, and Index of Multiple Deprivation (IMD) band.

Usage

Install Required Packages: Before running the code, make sure to install the necessary R packages. You can install them using the following commands:
R
Copy code
install.packages("tidyverse")
install.packages("tidymodels")
install.packages("janitor")
Load Data: Load the dataset into R using the read_csv() function from the tidyverse package.
Preprocessing: Perform data preprocessing steps such as creating new features, converting variables to appropriate data types, and splitting the data into training and testing sets.
Model Building: Build a logistic regression model using the specified features and train it using the training data.
Model Evaluation: Evaluate the performance of the trained model using the testing data. Calculate metrics such as accuracy to assess the model's predictive power.
Interpretation: Interpret the model results and assess the impact of different features on student performance.
Files

studentInfo.csv: CSV file containing the raw student data.
student_performance_prediction.R: R script containing the code for data preprocessing, model building, evaluation, and interpretation.
README.md: This README file providing an overview of the project and instructions for usage.
Dependencies

tidyverse
tidymodels
janitor
Authors

[Your Name]
# LAB-Assignment-1
