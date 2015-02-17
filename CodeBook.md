# CodeBook

This codebook describe the tidy dataset generated after running ```run_analysis.R``` on the original dataset.

## Original Data Source

* Original data: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Original description of the dataset: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

More information about the original dataset is also contained in the Readme.txt in the dataset zip file.

## Tidy Dataset (```UCI_HAR_Tidy.txt```)

The tidy dataset ```UCI_HAR_Tidy.txt``` contains the mean for each activity and each subject for measurement of mean and standard deviation from the original dataset.

### Variables description  ###
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**All measurements in the tidy dataset below are the mean of the measurements for the subject and the activity.**

    Subject - the subject who performed the activity. Its range is from 1 to 30 (numeric)
    ActivityLabel - activity name (character)
    tBodyAcc-mean()-X  (numeric)
    tBodyAcc-mean()-Y (numeric)
    tBodyAcc-mean()-Z (numeric)
    tBodyAcc-std()-X (numeric)
    tBodyAcc-std()-Y (numeric)
    tBodyAcc-std()-Z (numeric)
    tGravityAcc-mean()-X (numeric)
    tGravityAcc-mean()-Y (numeric)
    tGravityAcc-mean()-Z (numeric)
    tGravityAcc-std()-X (numeric)
    tGravityAcc-std()-Y (numeric)
    tGravityAcc-std()-Z (numeric)
    tBodyAccJerk-mean()-X (numeric)
    tBodyAccJerk-mean()-Y (numeric)
    tBodyAccJerk-mean()-Z (numeric)
    tBodyAccJerk-std()-X (numeric)
    tBodyAccJerk-std()-Y (numeric)
    tBodyAccJerk-std()-Z (numeric)
    tBodyGyro-mean()-X (numeric)
    tBodyGyro-mean()-Y (numeric)
    tBodyGyro-mean()-Z (numeric)
    tBodyGyro-std()-X (numeric)
    tBodyGyro-std()-Y (numeric)
    tBodyGyro-std()-Z (numeric)
    tBodyGyroJerk-mean()-X (numeric)
    tBodyGyroJerk-mean()-Y (numeric)
    tBodyGyroJerk-mean()-X (numeric)
    tBodyGyroJerk-std()-X (numeric)
    tBodyGyroJerk-std()-Y (numeric)
    tBodyGyroJerk-std()-X (numeric)
    tBodyAccMag-mean() (numeric)
    tBodyAccMag-std() (numeric)
    tGravityAccMag-mean() (numeric)
    tGravityAccMag-std() (numeric)
    tBodyAccJerkMag-mean() (numeric)
    tBodyAccJerkMag-std() (numeric)
    tBodyGyroMag-mean() (numeric)
    tBodyGyroMag-std() (numeric)
    tBodyGyroJerkMag-mean() (numeric)
    tBodyGyroJerkMag-std() (numeric)
    fBodyAcc-mean()-X (numeric)
    fBodyAcc-mean()-Y (numeric)
    fBodyAcc-mean()-Z (numeric)
    fBodyAcc-std()-X (numeric)
    fBodyAcc-std()-Y (numeric)
    fBodyAcc-std()-Z (numeric)
    fBodyAccJerk-mean()-X (numeric)
    fBodyAccJerk-mean()-Y (numeric)
    fBodyAccJerk-mean()-Z (numeric)
    fBodyAccJerk-std()-X (numeric)
    fBodyAccJerk-std()-Y (numeric)
    fBodyAccJerk-std()-Z (numeric)
    fBodyGyro-mean()-X (numeric)
    fBodyGyro-mean()-Y (numeric)
    fBodyGyro-mean()-Z (numeric)
    fBodyGyro-std()-X (numeric)
    fBodyGyro-std()-Y (numeric)
    fBodyGyro-std()-Z (numeric)
    fBodyAccMag-mean() (numeric)
    fBodyAccMag-std() (numeric)
    fBodyAccJerkMag-mean() (numeric)
    fBodyAccJerkMag-std() (numeric)
    fBodyGyroMag-mean() (numeric)
    fBodyGyroMag-std() (numeric)
    fBodyGyroJerkMag-mean() (numeric)
    fBodyGyroJerkMag-std() (numeric)


