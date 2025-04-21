# Code Book

## Overview

This code book describes the tidy dataset generated from the UCI HAR dataset. The dataset includes measurements of mean and standard deviation for various signals, grouped by activity and subject, and the average of each variable for each activity and each subject.

---

## Variables

### Identifiers
- `subject`: Integer identifier for each participant (ranges from 1 to 30).
- `activity`: Descriptive name of the activity performed. Possible values:
  - Walking
  - Walking_Upstairs
  - Walking_Downstairs
  - Sitting
  - Standing
  - Laying

### Measurement Variables
The measurement variables represent mean or standard deviation of signals derived from the accelerometer and gyroscope data collected from a smartphone. These measurements are in normalized units with no specific scale.

**Time-Domain Signals:**
- `TimeBodyAccelerometer-mean()-X`: Mean of body acceleration along the X-axis.
- `TimeBodyAccelerometer-mean()-Y`: Mean of body acceleration along the Y-axis.
- `TimeBodyAccelerometer-mean()-Z`: Mean of body acceleration along the Z-axis.
- `TimeBodyAccelerometer-std()-X`: Standard deviation of body acceleration along the X-axis.
- `TimeBodyAccelerometer-std()-Y`: Standard deviation of body acceleration along the Y-axis.
- `TimeBodyAccelerometer-std()-Z`: Standard deviation of body acceleration along the Z-axis.
- `TimeGravityAccelerometer-mean()-X`: Mean of gravity acceleration along the X-axis.
- `TimeGravityAccelerometer-mean()-Y`: Mean of gravity acceleration along the Y-axis.
- `TimeGravityAccelerometer-mean()-Z`: Mean of gravity acceleration along the Z-axis.
- `TimeGravityAccelerometer-std()-X`: Standard deviation of gravity acceleration along the X-axis.
- `TimeGravityAccelerometer-std()-Y`: Standard deviation of gravity acceleration along the Y-axis.
- `TimeGravityAccelerometer-std()-Z`: Standard deviation of gravity acceleration along the Z-axis.
- `TimeBodyAccelerometerJerk-mean()-X`: Mean of body acceleration jerk along the X-axis.
- `TimeBodyAccelerometerJerk-mean()-Y`: Mean of body acceleration jerk along the Y-axis.
- `TimeBodyAccelerometerJerk-mean()-Z`: Mean of body acceleration jerk along the Z-axis.
- `TimeBodyAccelerometerJerk-std()-X`: Standard deviation of body acceleration jerk along the X-axis.
- `TimeBodyAccelerometerJerk-std()-Y`: Standard deviation of body acceleration jerk along the Y-axis.
- `TimeBodyAccelerometerJerk-std()-Z`: Standard deviation of body acceleration jerk along the Z-axis.
- `TimeBodyGyroscope-mean()-X`: Mean of body gyroscope measurement along the X-axis.
- `TimeBodyGyroscope-mean()-Y`: Mean of body gyroscope measurement along the Y-axis.
- `TimeBodyGyroscope-mean()-Z`: Mean of body gyroscope measurement along the Z-axis.
- `TimeBodyGyroscope-std()-X`: Standard deviation of body gyroscope measurement along the X-axis.
- `TimeBodyGyroscope-std()-Y`: Standard deviation of body gyroscope measurement along the Y-axis.
- `TimeBodyGyroscope-std()-Z`: Standard deviation of body gyroscope measurement along the Z-axis.
- `TimeBodyGyroscopeJerk-mean()-X`: Mean of body gyroscope jerk along the X-axis.
- `TimeBodyGyroscopeJerk-mean()-Y`: Mean of body gyroscope jerk along the Y-axis.
- `TimeBodyGyroscopeJerk-mean()-Z`: Mean of body gyroscope jerk along the Z-axis.
- `TimeBodyGyroscopeJerk-std()-X`: Standard deviation of body gyroscope jerk along the X-axis.
- `TimeBodyGyroscopeJerk-std()-Y`: Standard deviation of body gyroscope jerk along the Y-axis.
- `TimeBodyGyroscopeJerk-std()-Z`: Standard deviation of body gyroscope jerk along the Z-axis.
- `TimeBodyAccelerometerMagnitude-mean()`: Mean of body acceleration magnitude.
- `TimeBodyAccelerometerMagnitude-std()`: Standard deviation of body acceleration magnitude.
- `TimeGravityAccelerometerMagnitude-mean()`: Mean of gravity acceleration magnitude.
- `TimeGravityAccelerometerMagnitude-std()`: Standard deviation of gravity acceleration magnitude.
- `TimeBodyAccelerometerJerkMagnitude-mean()`: Mean of body acceleration jerk magnitude.
- `TimeBodyAccelerometerJerkMagnitude-std()`: Standard deviation of body acceleration jerk magnitude.
- `TimeBodyGyroscopeMagnitude-mean()`: Mean of body gyroscope magnitude.
- `TimeBodyGyroscopeMagnitude-std()`: Standard deviation of body gyroscope magnitude.
- `TimeBodyGyroscopeJerkMagnitude-mean()`: Mean of body gyroscope jerk magnitude.
- `TimeBodyGyroscopeJerkMagnitude-std()`: Standard deviation of body gyroscope jerk magnitude.

**Frequency-Domain Signals:**
- `FrequencyBodyAccelerometer-mean()-X`: Mean of body acceleration frequency along the X-axis.
- `FrequencyBodyAccelerometer-mean()-Y`: Mean of body acceleration frequency along the Y-axis.
- `FrequencyBodyAccelerometer-mean()-Z`: Mean of body acceleration frequency along the Z-axis.
- `FrequencyBodyAccelerometer-std()-X`: Standard deviation of body acceleration frequency along the X-axis.
- `FrequencyBodyAccelerometer-std()-Y`: Standard deviation of body acceleration frequency along the Y-axis.
- `FrequencyBodyAccelerometer-std()-Z`: Standard deviation of body acceleration frequency along the Z-axis.
- `FrequencyBodyAccelerometerJerk-mean()-X`: Mean of body acceleration jerk frequency along the X-axis.
- `FrequencyBodyAccelerometerJerk-mean()-Y`: Mean of body acceleration jerk frequency along the Y-axis.
- `FrequencyBodyAccelerometerJerk-mean()-Z`: Mean of body acceleration jerk frequency along the Z-axis.
- `FrequencyBodyAccelerometerJerk-std()-X`: Standard deviation of body acceleration jerk frequency along the X-axis.
- `FrequencyBodyAccelerometerJerk-std()-Y`: Standard deviation of body acceleration jerk frequency along the Y-axis.
- `FrequencyBodyAccelerometerJerk-std()-Z`: Standard deviation of body acceleration jerk frequency along the Z-axis.
- `FrequencyBodyGyroscope-mean()-X`: Mean of body gyroscope frequency along the X-axis.
- `FrequencyBodyGyroscope-mean()-Y`: Mean of body gyroscope frequency along the Y-axis.
- `FrequencyBodyGyroscope-mean()-Z`: Mean of body gyroscope frequency along the Z-axis.
- `FrequencyBodyGyroscope-std()-X`: Standard deviation of body gyroscope frequency along the X-axis.
- `FrequencyBodyGyroscope-std()-Y`: Standard deviation of body gyroscope frequency along the Y-axis.
- `FrequencyBodyGyroscope-std()-Z`: Standard deviation of body gyroscope frequency along the Z-axis.
- `FrequencyBodyAccelerometerMagnitude-mean()`: Mean of body acceleration magnitude frequency.
- `FrequencyBodyAccelerometerMagnitude-std()`: Standard deviation of body acceleration magnitude frequency.
- `FrequencyBodyAccelerometerJerkMagnitude-mean()`: Mean of body acceleration jerk magnitude frequency.
- `FrequencyBodyAccelerometerJerkMagnitude-std()`: Standard deviation of body acceleration jerk magnitude frequency.
- `FrequencyBodyGyroscopeMagnitude-mean()`: Mean of body gyroscope magnitude frequency.
- `FrequencyBodyGyroscopeMagnitude-std()`: Standard deviation of body gyroscope magnitude frequency.
- `FrequencyBodyGyroscopeJerkMagnitude-mean()`: Mean of body gyroscope jerk magnitude frequency.
- `FrequencyBodyGyroscopeJerkMagnitude-std()`: Standard deviation of body gyroscope jerk magnitude frequency.

---

## Transformations Applied
1. **Dataset Merging**: the training and test sets are combined into a single dataset
2. **Variable Selection**: extracts only the mean and standard deviation for each measurement
3. **Naming Activities in dataset**: Replaces activity codes with descriptive names such as "Walking" or "Sitting."
4. **Variable Labels**: labels the dataset with descriptive variable names
5. **Aggregation**: created a second, independent tidy data set with the average of each variable for each activity and each subject.

---

## Summary
The tidy dataset provides a structured and clean format of the measurements with proper descriptive labels and summary statistics for easy analysis.
