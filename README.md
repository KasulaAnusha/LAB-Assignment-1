
Student Performance Prediction

This project aims to predict student performance (pass/fail) based on various factors such as disability status and IMD band using logistic regression.

Table of Contents

Introduction
Installation
Usage
Contributing
License
Introduction

The project utilizes R programming language and several R packages including tidyverse, tidymodels, and janitor for data manipulation, modeling, and cleaning respectively. The logistic regression model is employed to predict whether a student will pass or fail based on input features.

Installation

To run this project, you'll need:

R (>= 3.6.0)
tidyverse (R package)
tidymodels (R package)
janitor (R package)
You can install the required R packages using the following commands:

R
Copy code
install.packages(c("tidyverse", "tidymodels", "janitor"))
Usage

Clone this repository to your local machine.
Ensure you have the required R packages installed (see Installation section).
Place your student data CSV file named "studentInfo.csv" in the project directory.
Run the R script student_performance_prediction.R.
The script will read the data, preprocess it, train the logistic regression model, and evaluate its performance.
View the results and analysis.
Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.
