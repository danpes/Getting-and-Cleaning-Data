This code book describes the variables, the data, and any transformations or work performed to clean up the data.

# Data Source
- Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# About the data
The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws

# Observed Activities
- "subject" (integer) the ID of the subject observed, between 1 and 30

- "al" (character) the type of activity observed:

#

- "tBodyAccmeanX" (double) mean linear acceleration of the subject's body in the X dimension

- "tBodyAccmeanY" (double) mean linear acceleration of the subject's body in the Y dimension

- "tBodyAccmeanZ" (double) mean linear acceleration of the subject's body in the Z dimension

- "tGravityAccmeanX" (double) mean linear gravity acceleration in the X dimension

- "tGravityAccmeanY" (double) mean linear gravity acceleration in the Y dimension

- "tGravityAccmeanZ" (double) mean linear gravity acceleration in the Z dimension

- "tBodyAccJerkmeanX" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the X dimension

- "tBodyAccJerkmeanY" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the Y dimension

- "tBodyAccJerkmeanZ" (double) mean rate of change of linear body acceleration (i.e., "jerk") in the Z dimension

- "tBodyGyromeanX" (double) mean angular velocity of the subject's body in the X dimension

- "tBodyGyromeanY" (double) mean angular velocity of the subject's body in the Y dimension

- "tBodyGyromeanZ" (double) mean angular velocity of the subject's body in the Z dimension

- "tBodyGyroJerkmeanX" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the X dimension

- "tBodyGyroJerkmeanY" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the Y dimension

- "tBodyGyroJerkmeanZ" (double) mean rate of change of angular velocity of the subject's body (i.e., "jerk") in the Z dimension
- "tBodyAccMagmean" (double) mean magnitude of the three-dimensional acceleration of the subject's body

- "tGravityAccMagmean" (double) mean magnitude of the three-dimensional gravity acceleration

- "tBodyAccJerkMagmean" (double) mean magnitude of the rate of change of the three-dimensional acceleration of the subject's body

- "tBodyGyroMagmean" (double) mean magnitude of the three-dimensional angular velocity of the subject's body

- "tBodyGyroJerkMagmean" (double) mean magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

- "fBodyAccmeanX" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the X dimension

- "fBodyAccmeanY" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the Y dimension

- "fBodyAccmeanZ" (double) mean fast Fourier transform value of the linear acceleration of the subject's body in the Z dimension

- "fBodyAccJerkmeanX" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension

- "fBodyAccJerkmeanY" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension

- "fBodyAccJerkmeanZ" (double) mean fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension

- "fBodyGyromeanX" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the X dimension

- "fBodyGyromeanY" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the Y dimension

- "fBodyGyromeanZ" (double) mean fast Fourier transform value of the mean angular velocity of the subject's body in the Z dimension

- "fBodyAccMagmean" (double) mean fast Fourier transform value of the magnitude of the three-dimensional acceleration of the subject's body

- "fBodyBodyAccJerkMagmean" (double) mean fast Fourier transform value of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body

- "fBodyBodyGyroMagmean" (double) mean fast Fourier transform value of the magnitude of the three-dimensional angular velocity of the subject's body

- "fBodyBodyGyroJerkMagmean" (double) mean fast Fourier transform value of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

- "tBodyAccstdX" (double) standard deviation of the linear acceleration of the subject's body in the X dimension

- "tBodyAccstdY" (double) standard deviation of the linear acceleration of the subject's body in the Y dimension

- "tBodyAccstdZ" (double) standard deviation of the linear acceleration of the subject's body in the Z dimension

- "tGravityAccstdX" (double) standard deviation of the linear gravity acceleration in the X dimension

- "tGravityAccstdY" (double) standard deviation of the linear gravity acceleration in the Y dimension

- "tGravityAccstdZ" (double) standard deviation of the linear gravity acceleration in the Z dimension

- "tBodyAccJerkstdX" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension
- "tBodyAccJerkstdY" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension
- "tBodyAccJerkstdZ" (double) standard deviation of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension
- "tBodyGyrostdX" (double) standard deviation of the angular velocity of the subject's body in the X dimension

- "tBodyGyrostdY" (double) standard deviation of the angular velocity of the subject's body in the Y dimension

- "tBodyGyrostdZ" (double) standard deviation of the angular velocity of the subject's body in the Z dimension

- "tBodyGyroJerkstdX" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the X dimension

- "tBodyGyroJerkstdY" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the Y dimension

- "tBodyGyroJerkstdZ" (double) standard deviation of the rate of change of angular velocity of the subject's body (i.e., "jerk") in the Z dimension

- "tBodyAccMagstd" (double) standard deviation of the magnitude of the three-dimensional acceleration of the subject's body

- "tGravityAccMagstd" (double) standard deviation of the magnitude of the three-dimensional gravity acceleration

- "tBodyAccJerkMagstd" (double) standard deviation of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body

- "tBodyGyroMagstd" (double) standard deviation of the magnitude of the three-dimensional angular velocity of the subject's body

- "tBodyGyroJerkMagstd" (double) standard deviation of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

- "fBodyAccstdX" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the X dimension

- "fBodyAccstdY" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the Y dimension

- "fBodyAccstdZ" (double) standard deviation of the fast Fourier transform value of the linear acceleration of the subject's body in the Z dimension

- "fBodyAccJerkstdX" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the X dimension

- "fBodyAccJerkstdY" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Y dimension

- "fBodyAccJerkstdZ" (double) standard deviation of the fast Fourier transform value of the rate of change of linear body acceleration (i.e., "jerk") in the Z dimension

- "fBodyGyrostdX" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the X dimension

- "fBodyGyrostdY" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the Y dimension

- "fBodyGyrostdZ" (double) standard deviation of the fast Fourier transform value of the mean angular velocity of the subject's body in the Z dimension

- "fBodyAccMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the three-dimensional acceleration of the subject's body

- "fBodyBodyAccJerkMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the rate of change of the three-dimensional acceleration of the subject's body

- "fBodyBodyGyroMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the three-dimensional angular velocity of the subject's body

- "fBodyBodyGyroJerkMagstd" (double) standard deviation of the fast Fourier transform value of the magnitude of the rate of change of the three-dimensional angular velocity of the subject's body

# Steps of data transformation
[0] --> get data in a local sandbox
[1] --> manage tests data: get means and std dev + label data sets
[2] --> manage train data: get means and std dev + label data sets
[3] --> merge test and train data sets + label data sets
[4] --> create a new tidy data set with means of activities 
