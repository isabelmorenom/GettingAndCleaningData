---
title: "Getting and Cleaning Data Project"
author: "María Isabel Moreno Muñoz"
date: "12 de febrero de 2016"
output: html_document
---

# Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.

You will be required to submit:

1. a tidy data set as described below.
2. a link to a Github repository with your script for performing the analysis.
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
4. a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# FILES IN THE REPOSITORY

* README.md: with the project and script description.
* run_analysis.R: R script for the analysis.
* scriptProgress.Rmd: Rmd file with the execution of script.
* CodeBook.md: describes the variables, the data, and any transformations.
* tidyMeans.txt: tidyMeans.txt: tidy file with subjects, activities y the mean of the measures (features with the mean and standard desviation). One observation per person and activity.

# SCRIPTS Description (run_analysis.R)

The following steps describe how the script works.For more details, see run_analysis.R

### DATA SOURCE

There are two datasets (train and test), with the following files:

* "test/subject_test.txt, train/subject_train.txt": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30, because it was 30 volunteers within an age bracket of 19-48 years.
* "train/y_train.txt, test/y_test.txt": identify the activity each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.The file "activity_labels.txt" links the class labels with their activity name.
* "train/X_train.txt, test/X_test.txt, features.txt,features_info.txt": training set, test set, features and info about the features.

### STEP1.Merge the training and the test sets to create one data set.

The script creates the following dataframes:
  
  * "df": merge "Xtrain" and "XTest" with the measures and their original features.
  
  
### STEP2. Extracts only the measurements on the mean and standard deviation for each measurement.

It is obtained a subset from "df" dataframe with the features that contain mean() and std(). Select features with the mean and the standard desviation.

### STEP3. Uses descriptive activity names to name the activities in the data set.

It is created the following datasets:

"activities": merge "YTrain" and "YTest" dataframe with the activity of each person and replace the activity_id with the values (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
"subjects": with the id of each person.

### STEP4. Appropriately labels the data set with descriptive variable names.

It is eliminated underscores,parenthesis and it is converted in lowercase except (X,Y,Z) because they  represent axises X,Y, Z.

It is created the "dftidy" dataframe. Merge "subjects","activities" and "df". For each person there are many measures.


Original labels | newlabels
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


### STEP 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
It is created the "tidyMeans.txt" group by subjects and activities with the mean of each measure. So, the number of rows is 180 (30 volunteers with 6 activities). 

