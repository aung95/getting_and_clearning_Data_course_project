# Getting and Cleaning Data Course Project

## Project Overview

The aim of this project is to showcase the ability to collect, work with, and clean a dataset, preparing it for subsequent analysis. This project requires submission of a tidy dataset, along with a Github repository containing scripts for performing the analysis, and a comprehensive code book (`CodeBook.md`) that details the variables, data, and any transformations or cleaning operations performed.

## Repository Contents

This repository includes the following items essential for understanding and replicating the analysis:

1. **Tidy Dataset (`tidydataset.txt`)**: A clean and tidy dataset ready for further analysis.
2. **Analysis Script (`run_analysis.R`)**: The R script used to perform the data cleaning and transformations.
3. **Code Book (`CodeBook.md`)**: Documentation that describes the variables, data, and the steps taken to clean up the data.
4. **README (`README.md`)**: This document, explaining the project, dataset, and how the scripts are interconnected.

## Dataset Overview

The dataset features measurements from the accelerometer and gyroscope 3-axial raw signals (tAcc-XYZ and tGyro-XYZ), recorded at a 50 Hz sampling rate. These time-domain signals undergo several preprocessing steps, including noise filtering and separation into body and gravity acceleration signals, leading to a comprehensive set of variables for each observation instance.

## Analysis Steps

The analysis and data cleaning process consist of several key steps, detailed both in the `run_analysis.R` script and the `CodeBook.md` document. Here is a summary:

1. **Data Cleaning and Preparation**: As described in `CodeBook.md`, this includes raw signal acquisition, preprocessing steps, and the description of feature variables.
   
2. **Inclusion of Features**: The dataset integrates measurements across 30 volunteers aged 19-48 years, engaging in activities such as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. It emphasizes mean and standard deviation for each variable.

3. **Creation of Tidy Dataset**: The `tidydataset.txt` file is a clean and organized collection of the data, ready for analysis. It contains all necessary information for training and testing evaluations.

4. **Detailed Analysis**: Utilizing the `run_analysis.R` script, STEP 5 involves calculating the mean and standard deviation for each participant and activity. The results are stored in `average.results.txt`.

## Running the Analysis

To reproduce the analysis:

1. Ensure you have R installed on your system.
2. Place the `run_analysis.R` script in your working directory.
3. Run the script in R. This will execute the data preparation and analysis steps, ultimately generating the tidy dataset and the analysis results.

For a detailed explanation of the script and its functions, refer to the comments within `run_analysis.R` and the accompanying `CodeBook.md`.
