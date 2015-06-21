#AVEdata

##Description

This dataset is part of the Course Project of Getting and Cleaning Data Course and summarizes data collected from the accelerometers from the Samsung Galaxy S smartphone

##Study Design

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The used data can be downloaded from here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Quoted from the original README.txt file included with the original data:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details." 

Quoted from the features_info.txt file included with the original data:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)."

##Transformations

The raw data has been merged, selected, reestructured and summarised with the R script that can be found in the repository. This dataset presents an aggregate mean of the mean and standard deviation measurements for each subject and specific activity.

##Code Book

Subject: ID of the subject who performed the activities

Activity: Specific activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

AVEtBodyAcc_mean_X: Aggregate mean of the mean values of the time body acceleration signal in the x axis
AVEtBodyAcc_mean_Y: Aggregate mean of the mean values of the time body acceleration signal in the y axis
AVEtBodyAcc_mean_Z: Aggregate mean of the mean values of the time body acceleration signal in the z axis

AVEtBodyAcc_std_X: Aggregate mean of the standard deviation values of the time body acceleration signal in the x axis
AVEtBodyAcc_std_Y: Aggregate mean of the standard deviation  values of the time body acceleration signal in the y axis
AVEtBodyAcc_std_Z: Aggregate mean of the standard deviation  values of the time body acceleration signal in the z axis

AVEtGravityAcc_mean_X: Aggregate mean of the mean values of the time gravity acceleration signal in the x axis
AVEtGravityAcc_mean_Y: Aggregate mean of the mean values of the time gravity acceleration signal in the y axis
AVEtGravityAcc_mean_Z: Aggregate mean of the mean values of the time gravity acceleration signal in the z axis

AVEtGravityAcc_std_X: Aggregate mean of the standard deviation values of the time gravity acceleration signal in the x axis
AVEtGravityAcc_std_Y: Aggregate mean of the standard deviation  values of the time gravity acceleration signal in the y axis
AVEtGravityAcc_std_Z: Aggregate mean of the standard deviation  values of the time gravity acceleration signal in the z axis

AVEtBodyAccJerk_mean_X: Aggregate mean of the mean values of the time body acceleration jerk in the x axis
AVEtBodyAccJerk_mean_Y: Aggregate mean of the mean values of the time body acceleration jerk in the y axis
AVEtBodyAccJerk_mean_Z: Aggregate mean of the mean values of the time body acceleration jerk in the z axis

AVEtBodyAccJerk_std_X: Aggregate mean of the standard deviation values of the time body acceleration jerk in the x axis
AVEtBodyAccJerk_std_Y: Aggregate mean of the standard deviation values of the time body acceleration jerk in the y axis
AVEtBodyAccJerk_std_Z: Aggregate mean of the standard deviation values of the time body acceleration jerk in the z axis

AVEtBodyGyro_mean_X: Aggregate mean of the mean values of the time body angular velocity signal in the x axis
AVEtBodyGyro_mean_Y: Aggregate mean of the mean values of the time body angular velocity signal in the y axis
AVEtBodyGyro_mean_Z: Aggregate mean of the mean values of the time body angular velocity signal in the z axis

AVEtBodyGyro_std_X: Aggregate mean of the standard deviation values of the time body angular velocity signal in the x axis
AVEtBodyGyro_std_Y: Aggregate mean of the standard deviation  values of the time body angular velocity signal in the y axis
AVEtBodyGyro_std_Z: Aggregate mean of the standard deviation  values of the time body angular velocity signal in the z axis

AVEtBodyGyroJerk_mean_X: Aggregate mean of the mean values of the time body angular velocity jerk in the x axis
AVEtBodyGyroJerk_mean_Y: Aggregate mean of the mean values of the time body angular velocity jerk in the y axis
AVEtBodyGyroJerk_mean_Z: Aggregate mean of the mean values of the time body angular velocity jerk in the z axis

AVEtBodyGyroJerk_std_X: Aggregate mean of the standard deviation values of the time body angular velocity jerk in the x axis
AVEtBodyGyroJerk_std_Y: Aggregate mean of the standard deviation values of the time body angular velocity jerk in the y axis
AVEtBodyGyroJerk_std_Z: Aggregate mean of the standard deviation values of the time body angular velocity jerk in the z axis

AVEtBodyAccMag_mean: Aggregate mean of the mean values of the time magnitude of the body acceleration signal
AVEtBodyAccMag_std: Aggregate mean of the standard deviation values of the time magnitude of the body acceleration signal

AVEtGravityAccMag_mean: Aggregate mean of the mean values of the time magnitude of the gravity acceleration signal
AVEtGravityAccMag_std: Aggregate mean of the standard deviation values of the time magnitude of the gravity acceleration signal

AVEtBodyAccJerkMag_mean: Aggregate mean of the mean values of the time magnitude of the body acceleration jerk
AVEtBodyAccJerkMag_std: Aggregate mean of the standard deviation values of the time magnitude of the  body acceleration jerk

AVEtBodyGyroMag_mean: Aggregate mean of the mean values of the time magnitude of the body angular velocity signal
AVEtBodyGyroMag_std: Aggregate mean of the standard deviation values of the time magnitude of the body angular velocity signal

AVEtBodyGyroJerkMag_mean: Aggregate mean of the mean values of the time magnitude of the body angular velocity jerk
AVEtBodyGyroJerkMag_std: Aggregate mean of the standard deviation values of the time magnitude of the  body angular velocity jerk

AVEfBodyAcc_mean_X: Aggregate mean of the mean values of the frequency body acceleration signal in the x axis
AVEfBodyAcc_mean_Y: Aggregate mean of the mean values of the frequency body acceleration signal in the y axis
AVEfBodyAcc_mean_Z: Aggregate mean of the mean values of the frequency body acceleration signal in the z axis

AVEfBodyAcc_std_X: Aggregate mean of the standard deviation values of the frequency body acceleration signal in the x axis
AVEfBodyAcc_std_Y: Aggregate mean of the standard deviation  values of the frequency body acceleration signal in the y axis
AVEfBodyAcc_std_Z: Aggregate mean of the standard deviation  values of the frequency body acceleration signal in the z axis

AVEfBodyAccJerk_mean_X: Aggregate mean of the mean values of the frequency body acceleration jerk in the x axis
AVEfBodyAccJerk_mean_Y: Aggregate mean of the mean values of the frequency body acceleration jerk in the y axis
AVEfBodyAccJerk_mean_Z: Aggregate mean of the mean values of the frequency body acceleration jerk in the z axis

AVEfBodyAccJerk_std_X: Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the x axis
AVEfBodyAccJerk_std_Y: Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the y axis
AVEfBodyAccJerk_std_Z: Aggregate mean of the standard deviation values of the frequency body acceleration jerk in the z axis

AVEfBodyGyro_mean_X: Aggregate mean of the mean values of the frequency body angular velocity signal in the x axis
AVEfBodyGyro_mean_Y: Aggregate mean of the mean values of the frequency body angular velocity signal in the y axis
AVEfBodyGyro_mean_Z: Aggregate mean of the mean values of the frequency body angular velocity signal in the z axis

AVEfBodyGyro_std_X: Aggregate mean of the standard deviation values of the frequency body angular velocity signal in the x axis

AVEfBodyGyro_std_Y: Aggregate mean of the standard deviation  values of the frequency body angular velocity signal in the y axis

AVEfBodyGyro_std_Z: Aggregate mean of the standard deviation  values of the frequency body angular velocity signal in the z axis

AVEfBodyAccMag_mean: Aggregate mean of the mean values of the frequency magnitude of the body acceleration signal

AVEfBodyAccMag_std: Aggregate mean of the standard deviation values of the frequency magnitude of the body acceleration signal

AVEfBodyAccJerkMag_mean: Aggregate mean of the mean values of the frequency magnitude of the body acceleration jerk

AVEfBodyAccJerkMag_std: Aggregate mean of the standard deviation values of the frequency magnitude of the  body acceleration jerk

AVEfBodyGyroMag_mean: Aggregate mean of the mean values of the frequency magnitude of the body angular velocity signal

AVEfBodyGyroMag_std: Aggregate mean of the standard deviation values of the frequency magnitude of the body angular velocity signal

AVEfBodyGyroJerkMag_mean: Aggregate mean of the mean values of the frequency magnitude of the body angular velocity jerk

AVEfBodyGyroJerkMag_std: Aggregate mean of the standard deviation values of the frequency magnitude of the  body angular velocity jerk

