Reproducing the tidy data
1) Download the compress data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2) Uncompress into a new blank directory
3) place "run_analysis.R" in the new directory
4) run "run_analysis.R"
5) It will create two new files in the new directory
	"mergedData.txt" which represents a subset of the above data
		-combining the "train" and "test" datasets
		-adding a Subject column
		-adding descriptive column names
		-selecting column names representing means and standard deviations 
		-each row represents one observation for one subject
	"tidyData.txt" is a summary of "mergedData.txt
		-each row provides the mean of the data from "mergedData.txt" per column per subject

For each data set, the "Subject" column is an int, with all others being numeric.
The explanation for each column can be found in the original data feature.txt file, and is identical in "mergedData.txt" to the original data except for a parsing (elimination) of columns

For "tidyData.txt" 
"Subject" represents the Subject id
All other columns are means of the data found in "mergedData.txt" for each subject

> names(tidyData)
 [1] "Subject"                     "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [4] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"           
 [7] "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
[10] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[13] "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[16] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"       
[19] "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
[22] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[25] "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[28] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"      
[31] "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
[34] "tGravityAccMag-mean()"       "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"     
[37] "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[40] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"          
[43] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
[46] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"      
[49] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[52] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"         
[55] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
[58] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"         
[61] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[64] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()"
[67] "fBodyBodyGyroJerkMag-std()" 

