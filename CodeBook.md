Title: Wearable Computing - The Accelerometers from the Samsung Galaxy S Smartphone
========================================================
Course: Getting and Cleaning Data - Course Project
========================================================

This code book describes the variables and the data of my tidy dataset and describe all the transformations I performed to clean up the data provided in the course.

In the begining, the data are obtained and loaded from this website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The training set and test set are row binded together. the result data set had the total dimision of 10299 rows and 563 columns. Then, some data transformation were made. First: the activity data were labeled correctly as recorded in the dictionary below. Second: the columns are named proberly. Third: the all columns related to mean or standard devation were selected plus the activity and subject columns in order to create the new tidy data set. Lastly, the new data set were aggregated by activity and subject to calculate the mean of each column. The new tidy data set has the following dimentions ( 180 row by 75 column)

                      ============================== Data Dictionary ==========================

**Subject**

     This field identify the subjects of investegation. This study was perfomed on 30 subjects. 
     
**Activity**

    This field describes each activity made by each subject as follows:
       1    WALKING
       2	WALKING_UPSTAIRS
       3	WALKING_DOWNSTAIRS
       4	SITTING
       5	STANDING
       6	LAYING
**tBodyAcc-mean()-X**

    The mean of the total body acceleration on X axis
**tBodyAcc-mean()-Y**  

    The mean of the total body acceleration on Y axis
**tBodyAcc-mean()-Z** 

    The mean of the total body acceleration on Z axis
    
**tBodyAcc-std()-X**
    
    The standard deviation of the total body acceleration on X axis
    
**tBodyAcc-std()-Y**
    
    The standard deviation of the total body acceleration on Y axis
 
**tBodyAcc-std()-Z**
    
    The standard deviation of the total body acceleration on Z axis
    
**tGravityAcc-mean()-X**
   
    The mean of the total gravity acceleration on X axis
    
**tGravityAcc-mean()-Y**
    
    The mean of the total gravity acceleration on Y axis

**tGravityAcc-mean()-Z**
    
    The mean of the total gravity acceleration on Z axis

**tGravityAcc-std()-X**   
    
    The standard deviation of the total gravity acceleration on X axis
    
**tGravityAcc-std()-Y**
    
    The standard deviation of the total gravity acceleration on Y axis
 
**tGravityAcc-std()-Z**
    
    The standard deviation of the total gravity acceleration on Z axis

**tBodyAccJerk-mean()-X**
    
    The average of the total acceleration jerk on X axis
    
**tBodyAccJerk-mean()-Y**  
    
    The average of the total acceleration jerk on Y axis
    
**tBodyAccJerk-mean()-Z**
   
    The average of the total acceleration jerk on Z axis
    
**tBodyAccJerk-std()-X**   
    
    The standard deviation of the total acceleration jerk on X axis 
    
**tBodyAccJerk-std()-Y**
    
    The standard deviation of the total acceleration jerk on Y axis
   
**tBodyAccJerk-std()-Z**
    
    The standard deviation of the total acceleration jerk on Z axis
    
**tBodyGyro-mean()-X**
    
    The average of the total body gyro on X axis
    
**tBodyGyro-mean()-Y**   
    
    The average of the total body gyro on Y axis
    
**tBodyGyro-mean()-Z**
    
    The average of the total body gyro on Z axis
    
**tBodyGyro-std()-X** 
    
    The standard deviation of the total body gyro on X axis
    
**tBodyGyro-std()-Y**
    
    The standard deviation of the total body gyro on Y axis
    
**tBodyGyro-std()-Z** 
      
      The standard deviation of the total body gyro on Z axis
      
**tBodyGyroJerk-mean()-X**
    
    The average of the total body gyro jerk on X axis
    
**tBodyGyroJerk-mean()-Y**
    
    The average of the total body gyro jerk on Y axis

**tBodyGyroJerk-mean()-Z**
    
    The average of the total body gyro jerk on Z axis
    
**tBodyGyroJerk-std()-X**  
    
    The standard deviation of the total body gyroJerk on X axis
    
**tBodyGyroJerk-std()-Y**
    
    The standard deviation of the total body gyroJerk on Y axis
    
**tBodyGyroJerk-std()-Z**
    
    The standard deviation of the total body gyroJerk on Z axis

