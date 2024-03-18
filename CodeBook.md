CodeBook.md

=================
# CodeBook for Accelerometer and Gyroscope 3-Axial Raw Signals Dataset

## Dataset Overview

This dataset comprises features selected from the accelerometer and gyroscope 3-axial raw signals, denoted as tAcc-XYZ and tGyro-XYZ, respectively. These signals are time-domain signals, captured at a constant rate of 50 Hz and processed through various filtering and transformation steps to derive a set of variables for each observation pattern.

## Data Collection and Processing

### Raw Signal Acquisition

- **Signal Types**: Accelerometer and Gyroscope
- **Sampling Rate**: 50 Hz
- **Axes**: X, Y, Z

### Preprocessing Steps

1. **Noise Filtering**: Application of a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz.
2. **Separation of Acceleration Signal**: Decomposition into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
3. **Derivation of Jerk Signals**: Calculation of body linear acceleration and angular velocity derivatives to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
4. **Magnitude Calculation**: Use of the Euclidean norm to compute the magnitude of three-dimensional signals.
5. **Frequency Domain Transformation**: Application of Fast Fourier Transform (FFT) to select signals, producing frequency domain signals indicated by the prefix 'f'.

## Feature Variables

The dataset contains variables derived from the above signals, each capturing different aspects of the movement measured. 
Variables are indicated with a suffix to denote the type of statistic.
Only mean and std were kept for this analysis. 

- **mean()**: Mean value
- **std()**: Standard deviation

### Time-Domain Variables

- **tBodyAcc-XYZ**
- **tGravityAcc-XYZ**
- **tBodyAccJerk-XYZ**
- **tBodyGyro-XYZ**
- **tBodyGyroJerk-XYZ**
- **tBodyAccMag**
- **tGravityAccMag**
- **tBodyAccJerkMag**
- **tBodyGyroMag**
- **tBodyGyroJerkMag**

### Frequency-Domain Variables

- **fBodyAcc-XYZ**
- **fBodyAccJerk-XYZ**
- **fBodyGyro-XYZ**
- **fBodyAccMag**
- **fBodyAccJerkMag**
- **fBodyGyroMag**
- **fBodyGyroJerkMag**

## Observations

Each observation in the dataset is described by a feature vector comprising estimates of these variables for different patterns of activity, with '-XYZ' used to denote the 3-axial signals in the X, Y, and Z directions.

### Included Features

- Subject : 30 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years
- Activity : (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Mean and standard deviation for each of the variables listed above.

This codebook aims to provide a comprehensive overview of the dataset's structure, the origin of its variables, and the preprocessing steps involved in their calculation.
