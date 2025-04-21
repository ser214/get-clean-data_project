# Getting and Cleaning Data Final Project

# Human Activity Recognition (HAR) Dataset Analysis


## Overview

This project processes and tidies the [UCI HAR Dataset](https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones).

The goal of this project is to produce a clean and tidy dataset that can be easily analyzed. The script `run_analysis.R` achieves this by merging, cleaning, and summarizing the data.

---

## Repository Contents

- **`run_analysis.R`**: The R script for performing the analysis.
- **`CodeBook.md`**: Describes the variables in the tidy dataset, their units, and transformations applied.
- **`README.md`**: This file, providing an overview of the project and instructions for running the script.

---

## Steps Performed by `run_analysis.R`

1. **Dataset Merging**:
   - the training and test sets are combined into a single dataset
   
2. **Extract Key information**:
   - extracts only the mean and standard deviation for each measurement

3. **Naming Activities in dataset**:
   - Replaces activity codes with descriptive names such as "Walking" or "Sitting."

4. **Variable Labeling**:
   - labels the dataset with descriptive variable names
     
5. **Create a tidy dataset**:
   - Computes the average of each variable for each activity and each subject.
   - Outputs the result as a tidy dataset named `final_tidy_data.txt`.

---

## Requirements

Before running the script, ensure the following:

1. **R** is installed on your machine.
2. The Samsung HAR dataset is downloaded and extracted in the working directory. The dataset should be in the folder `UCI HAR Dataset`.

---

## Instructions for Running the Script

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/HAR-analysis.git



