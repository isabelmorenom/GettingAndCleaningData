---
title: "CodeBook"
author: "María Isabel Moreno Muñoz"
date: "12 de febrero de 2016"
output: html_document
---
#CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

#Data Source.

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Original Files description.

* features.txt: Names of the 561 features.
* activity_labels.txt: Names and IDs for each of the 6 activities.
* X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.
* subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
* y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.
* X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
* y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

# Variables.

* Subjects: an identifier of the subject who carried out the experiment (1 to 30)
* Activities: an activity label as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* Measurements: all variables are the mean of a measurement for each subject and activity

### Measurements description.

Original labels | newlabels (Mean group by subject and activity)
------------- | -------------
tBodyAcc-mean()-X          |tbodyaccmeanX
tBodyAcc-mean()-Y          |tbodyaccmeanY 
tBodyAcc-mean()-Z          |tbodyaccmeanZ           
tBodyAcc-std()-X           |tbodyaccstdX            
tBodyAcc-std()-Y           |tbodyaccstdY            
tBodyAcc-std()-Z           |tbodyaccstdZ            
tGravityAcc-mean()-X       |tgravityaccmeanX        
tGravityAcc-mean()-Y       |tgravityaccmeanY        
tGravityAcc-mean()-Z       |tgravityaccmeanZ        
tGravityAcc-std()-X        |tgravityaccstdX         
tGravityAcc-std()-Y        |tgravityaccstdY         
tGravityAcc-std()-Z        |tgravityaccstdZ         
tBodyAccJerk-mean()-X      |tbodyaccjerkmeanX       
tBodyAccJerk-mean()-Y      |tbodyaccjerkmeanY       
tBodyAccJerk-mean()-Z      |tbodyaccjerkmeanZ       
tBodyAccJerk-std()-X       |tbodyaccjerkstdX        
tBodyAccJerk-std()-Y       |tbodyaccjerkstdY        
tBodyAccJerk-std()-Z       |tbodyaccjerkstdZ        
tBodyGyro-mean()-X         |tbodygyromeanX          
tBodyGyro-mean()-Y         |tbodygyromeanY          
tBodyGyro-mean()-Z         |tbodygyromeanZ          
tBodyGyro-std()-X          |tbodygyrostdX           
tBodyGyro-std()-Y          |tbodygyrostdY           
tBodyGyro-std()-Z          |tbodygyrostdZ           
tBodyGyroJerk-mean()-X     |tbodygyrojerkmeanX      
tBodyGyroJerk-mean()-Y     |tbodygyrojerkmeanY      
tBodyGyroJerk-mean()-Z     |tbodygyrojerkmeanZ      
tBodyGyroJerk-std()-X      |tbodygyrojerkstdX       
tBodyGyroJerk-std()-Y      |tbodygyrojerkstdY       
tBodyGyroJerk-std()-Z      |tbodygyrojerkstdZ       
tBodyAccMag-mean()         |tbodyaccmagmean         
tBodyAccMag-std()          |tbodyaccmagstd          
tGravityAccMag-mean()      |tgravityaccmagmean      
tGravityAccMag-std()       |tgravityaccmagstd       
tBodyAccJerkMag-mean()     |tbodyaccjerkmagmean     
tBodyAccJerkMag-std()      |tbodyaccjerkmagstd      
tBodyGyroMag-mean()        |tbodygyromagmean        
tBodyGyroMag-std()         |tbodygyromagstd         
tBodyGyroJerkMag-mean()    |tbodygyrojerkmagmean    
tBodyGyroJerkMag-std()     |tbodygyrojerkmagstd     
fBodyAcc-mean()-X          |fbodyaccmeanX           
fBodyAcc-mean()-Y          |fbodyaccmeanY           
fBodyAcc-mean()-Z          |fbodyaccmeanZ           
fBodyAcc-std()-X           |fbodyaccstdX            
fBodyAcc-std()-Y           |fbodyaccstdY            
fBodyAcc-std()-Z           |fbodyaccstdZ            
fBodyAccJerk-mean()-X      |fbodyaccjerkmeanX       
fBodyAccJerk-mean()-Y      |fbodyaccjerkmeanY       
fBodyAccJerk-mean()-Z      |fbodyaccjerkmeanZ       
fBodyAccJerk-std()-X       |fbodyaccjerkstdX        
fBodyAccJerk-std()-Y       |fbodyaccjerkstdY        
fBodyAccJerk-std()-Z       |fbodyaccjerkstdZ        
fBodyGyro-mean()-X         |fbodygyromeanX          
fBodyGyro-mean()-Y         |fbodygyromeanY          
fBodyGyro-mean()-Z         |fbodygyromeanZ          
fBodyGyro-std()-X          |fbodygyrostdX           
fBodyGyro-std()-Y          |fbodygyrostdY           
fBodyGyro-std()-Z          |fbodygyrostdZ           
fBodyAccMag-mean()         |fbodyaccmagmean         
fBodyAccMag-std()          |fbodyaccmagstd          
fBodyBodyAccJerkMag-mean() |fbodyaccjerkmagmean 
fBodyBodyAccJerkMag-std()  |fbodyaccjerkmagstd  
fBodyBodyGyroMag-mean()    |fbodygyromagmean    
fBodyBodyGyroMag-std()     |fbodygyromagstd     
fBodyBodyGyroJerkMag-mean()|fbodygyrojerkmagmean
fBodyBodyGyroJerkMag-std() |fbodygyrojerkmagstd 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tacc(X|Y|Z) and tgyro(X|Y|Z). These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc(X|Y|Z) and tgravityacc(X|Y|Z) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerk(X|Y|Z) and tbodygyrojerk(X|Y|Z). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccMag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc(X|Y|Z), fbodyaccjerk(X|Y|Z), fbodygyro(X|Y|Z), fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

# TRANSFORMATION.

Look at Readme.md and run_analysis.R