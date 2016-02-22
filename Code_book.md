 
 The data was originally provided in multiple files that were split in two groups: a training data set and testing data set. The purpose of the study was to measure a nubmer of statistical data points for six different activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Our assignment was to first combine the training and testing data separately with the appropriate labels and activity description. Then we merge both the combined training and testing data sets to recreate the full study.
 
The following steps were followed to produce the tidy_data text file:

1) Read the test file into a variable
2) Read the activity index file into a variable
3) Read the subject testing file into a variable
4) Combine all three previous testing variables into a new one by using the cbind() function.

5) Repeat the same process for the training data. 

6) Merge the training and testing data into a new variable.

7) Use the activity_labels file to replace the activity indexes by the activity description. 

8) Use the features_label file to properly name the new table and name the two new extra columns, activiy and subject

9) Filter the column headings in order to only extract the means and standard deviation variables.

10) Use the filter to create a new and reduced table that only contain the mean and standard deviation measures as well as 
    the column 'Activity' and 'Subject'. 
    
11) Use the gsub() function to replace the abbreviated name patterns to fully descriptive column heading. 

12) From the table created in the previous step, create a variable name tidy that only contains the mean measurements of
    each activity. 
    
13) Order the tidy table by 'Activity' and 'Subject'. 

14) Pass the tidy table to a text file name tidy_data.txt.


15) After all the previous cleanup, the list below  contains the final descriptive table heading for the final tidy data.

 [1] "TimeBodyAccelerometer-mean()-X"                                  
 [2] "TimeBodyAccelerometer-mean()-Y"                                  
 [3] "TimeBodyAccelerometer-mean()-Z"                                  
 [4] "TimeGravityAccelerometer-mean()-X"                               
 [5] "TimeGravityAccelerometer-mean()-Y"                               
 [6] "TimeGravityAccelerometer-mean()-Z"                               
 [7] "TimeBodyAccelerometerJerk-mean()-X"                              
 [8] "TimeBodyAccelerometerJerk-mean()-Y"                              
 [9] "TimeBodyAccelerometerJerk-mean()-Z"                              
[10] "TimeBodyGyroscope-mean()-X"                                      
[11] "TimeBodyGyroscope-mean()-Y"                                      
[12] "TimeBodyGyroscope-mean()-Z"                                      
[13] "TimeBodyGyroscopeJerk-mean()-X"                                  
[14] "TimeBodyGyroscopeJerk-mean()-Y"                                  
[15] "TimeBodyGyroscopeJerk-mean()-Z"                                  
[16] "TimeBodyAccelerometerMagnitude-mean()"                           
[17] "TimeGravityAccelerometerMagnitude-mean()"                        
[18] "TimeBodyAccelerometerJerkMagnitude-mean()"                       
[19] "TimeBodyGyroscopeMagnitude-mean()"                               
[20] "TimeBodyGyroscopeJerkMagnitude-mean()"                           
[21] "FrequencyuencyBodyAccelerometer-mean()-X"                        
[22] "FrequencyuencyBodyAccelerometer-mean()-Y"                        
[23] "FrequencyuencyBodyAccelerometer-mean()-Z"                        
[24] "FrequencyuencyBodyAccelerometer-meanFrequency()-X"               
[25] "FrequencyuencyBodyAccelerometer-meanFrequency()-Y"               
[26] "FrequencyuencyBodyAccelerometer-meanFrequency()-Z"               
[27] "FrequencyuencyBodyAccelerometerJerk-mean()-X"                    
[28] "FrequencyuencyBodyAccelerometerJerk-mean()-Y"                    
[29] "FrequencyuencyBodyAccelerometerJerk-mean()-Z"                    
[30] "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-X"           
[31] "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-Y"           
[32] "FrequencyuencyBodyAccelerometerJerk-meanFrequency()-Z"           
[33] "FrequencyuencyBodyGyroscope-mean()-X"                            
[34] "FrequencyuencyBodyGyroscope-mean()-Y"                            
[35] "FrequencyuencyBodyGyroscope-mean()-Z"                            
[36] "FrequencyuencyBodyGyroscope-meanFrequency()-X"                   
[37] "FrequencyuencyBodyGyroscope-meanFrequency()-Y"                   
[38] "FrequencyuencyBodyGyroscope-meanFrequency()-Z"                   
[39] "FrequencyuencyBodyAccelerometerMagnitude-mean()"                 
[40] "FrequencyuencyBodyAccelerometerMagnitude-meanFrequency()"        
[41] "FrequencyuencyBodyBodyAccelerometerJerkMagnitude-mean()"         
[42] "FrequencyuencyBodyBodyAccelerometerJerkMagnitude-meanFrequency()"
[43] "FrequencyuencyBodyBodyGyroscopeMagnitude-mean()"                 
[44] "FrequencyuencyBodyBodyGyroscopeMagnitude-meanFrequency()"        
[45] "FrequencyuencyBodyBodyGyroscopeJerkMagnitude-mean()"             
[46] "FrequencyuencyBodyBodyGyroscopeJerkMagnitude-meanFrequency()"    
[47] "Angle(tBodyAccelerometerMean,gravity)"                           
[48] "Angle(tBodyAccelerometerJerkMean),gravityMean)"                  
[49] "Angle(tBodyGyroscopeMean,gravityMean)"                           
[50] "Angle(tBodyGyroscopeJerkMean,gravityMean)"                       
[51] "Angle(X,gravityMean)"                                            
[52] "Angle(Y,gravityMean)"                                            
[53] "Angle(Z,gravityMean)"                                            
[54] "Activity"                                                        
[55] "Subject" 

Each subject performed the following activities:
WALKING: subject was walking during the test
WALKING_UPSTAIRS: subject was walking up a staircase during the test
WALKING_DOWNSTAIRS: subject was walking down a staircase during the test
SITTING: subject was sitting during the test
STANDING: subject was standing during the test
LAYING: subject was laying down during the test
