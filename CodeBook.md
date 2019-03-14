
a) Both the processed test and training datasets are read in and merged into one data frame (Complete Data)
b) The data columns are then given names based on the features.txt file.
c) Columns that hold mean or standard deviation measurements are selected from the dataset, while the other measurement 
columns are excluded from the rest of the analysis.
d) The activity identifiers are replaced with the activity labels based on the activity_labels.txt file.
e) The data is then grouped by subject and activity, and the mean is calculated for every measurement column.
f) Finally, the summary dataset is written to a file, tidy.txt.

The columns included in the output file are listed below:
Subject - The participant ID
Activity - The label of the activity performed when the corresponding measurements were taken

All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description 
of the different measurement types can be found in the features_info.txt file

"tBodyAcc-mean()-X"
"tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"                    
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"                
"tGravityAcc-mean()-Z" 
"tGravityAcc-std()-X"                 
"tGravityAcc-std()-Y"                  
"tGravityAcc-std()-Z"                 
"tBodyAccJerk-mean()-X"                
"tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"                
"tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"                 
"tBodyAccJerk-std()-Z"                
"tBodyGyro-mean()-X"                   
"tBodyGyro-mean()-Y"                  
"tBodyGyro-mean()-Z"                   
"tBodyGyro-std()-X"                   
"tBodyGyro-std()-Y"                    
"tBodyGyro-std()-Z"                   
"tBodyGyroJerk-mean()-X"               
"tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"               
"tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"                
"tBodyGyroJerk-std()-Z"               
"tBodyAccMag-mean()"                  
"tBodyAccMag-std()"                   
"tGravityAccMag-mean()"               
"tGravityAccMag-std()"                
"tBodyAccJerkMag-mean()"              
"tBodyAccJerkMag-std()"               
"tBodyGyroMag-mean()"                  
"tBodyGyroMag-std()"                  
"tBodyGyroJerkMag-mean()"              
"tBodyGyroJerkMag-std()"              
"fBodyAcc-mean()-X"                    
"fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                    
"fBodyAcc-std()-X"                    
"fBodyAcc-std()-Y"                    
"fBodyAcc-std()-Z"                    
"fBodyAcc-meanFreq()-X"                
"fBodyAcc-meanFreq()-Y"               
"fBodyAcc-meanFreq()-Z"                
"fBodyAccJerk-mean()-X"               
"fBodyAccJerk-mean()-Y"                
"fBodyAccJerk-mean()-Z"               
"fBodyAccJerk-std()-X"                 
"fBodyAccJerk-std()-Y"                
"fBodyAccJerk-std()-Z"                 
"fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"            
"fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                   
"fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                   
"fBodyGyro-std()-X"                   
"fBodyGyro-std()-Y"                   
"fBodyGyro-std()-Z"                   
"fBodyGyro-meanFreq()-X"               
"fBodyGyro-meanFreq()-Y"              
"fBodyGyro-meanFreq()-Z"               
"fBodyAccMag-mean()"                  
"fBodyAccMag-std()"                    
"fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"           
"fBodyBodyAccJerkMag-std()"           
"fBodyBodyAccJerkMag-meanFreq()"       
"fBodyBodyGyroMag-mean()"             
"fBodyBodyGyroMag-std()"               
"fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"          
"fBodyBodyGyroJerkMag-std()"          
"fBodyBodyGyroJerkMag-meanFreq()"      
"angle(tBodyAccMean,gravity)"         
"angle(tBodyAccJerkMean),gravityMean)" 
"angle(tBodyGyroMean,gravityMean)"    
"angle(tBodyGyroJerkMean,gravityMean)" 
"angle(X,gravityMean)"                
"angle(Y,gravityMean)"                 
"angle(Z,gravityMean)" 

Activity Labels:
WALKING (value 1)
WALKING_UPSTAIRS (value 2)
WALKING_DOWNSTAIRS (value 3)
SITTING (value 4)
STANDING (value 5)
LAYING (value 6)
