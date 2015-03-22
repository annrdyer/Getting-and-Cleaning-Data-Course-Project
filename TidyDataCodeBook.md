## Tidy Data Set Code Book


The tidyDataSet.txt file contains the following 4 columns:


**activity:**  Each subject performed six activities.  Values are:

* WALKING
* WALKING UPSTAIRS
* WALKING DOWNSTAIRS
* SITTING
* STANDING
* LAYING


**subject_id:**  An identifier of the subject who carried out the the experiment.  Values are 1-30.  


**feature:**  Contains 66 features for mean and standard deviation measurments.  Feature name and corresponding name from the raw data set are listed below.


feature:                                          raw data feature name:

* tBodyAcc_mean_X                                   tBodyAcc-mean()-X
* tBodyAcc_mean_Y                                   tBodyAcc-mean()-Y
* tBodyAcc_mean_Z                                   tBodyAcc-mean()-Z
* tBodyAcc_std_X                                    tBodyAcc-std()-X     
* tBodyAcc_std_Y                                    tBodyAcc-std()-Y
* tBodyAcc_std_Z                                    tBodyAcc-std()-Z
* tGravityAcc_mean_X                                tGravityAcc-mean()-X
* tGravityAcc_mean_Y                                tGravityAcc-mean()-Y     
* tGravityAcc_mean_Z                                tGravityAcc-mean()-Z
* tGravityAcc_std_X                                 tGravityAcc-std()-X
* tGravityAcc_std_Y                                 tGravityAcc-std()-Y
* tGravityAcc_std_Z                                 tGravityAcc-std()-Z    
* tBodyAccJerk_mean_X                               tBodyAccJerk-mean()-X
* tBodyAccJerk_mean_Y                               tBodyAccJerk-mean()-Y
* tBodyAccJerk_mean_Z                               tBodyAccJerk-mean()-Z
* tBodyAccJerk_std_X                                tBodyAccJerk-std()-X
* tBodyAccJerk_std_Y                                tBodyAccJerk-std()-Y
* tBodyAccJerk_std_Z                                tBodyAccJerk-std()-Z
* tBodyGyro_mean_X                                  tBodyGyro-mean()-X
* tBodyGyro_mean_Y                                  tBodyGyro-mean()-Y      
* tBodyGyro_mean_Z                                  tBodyGyro-mean()-Z
* tBodyGyro_std_X                                   tBodyGyro-std()-X
* tBodyGyro_std_Y                                   tBodyGyro-std()-Y
* tBodyGyro_std_Z                                   tBodyGyro-std()-Z     
* tBodyGyroJerk_mean_X                              tBodyGyroJerk-mean()-X
* tBodyGyroJerk_mean_Y                              tBodyGyroJerk-mean()-Y
* tBodyGyroJerk_mean_Z                              tBodyGyroJerk-mean()-Z
* tBodyGyroJerk_std_X                               tBodyGyroJerk-std()-X  
* tBodyGyroJerk_std_Y                               tBodyGyroJerk-std()-Y
* tBodyGyroJerk_std_Z                               tBodyGyroJerk-std()-Z
* tBodyAccMag_mean                                  tBodyAccMag-mean()   
* tBodyAccMag_std                                   tBodyAccMag-std()    
* tGravityAccMag_mean                               tGravityAccMag-mean()
* tGravityAccMag_std                                tGravityAccMag-std()
* tBodyAccJerkMag_mean                              tBodyAccJerkMag-mean()
* tBodyAccJerkMag_std                               tBodyAccJerkMag-std()
* tBodyGyroMag_mean                                 tBodyGyroMag-mean() 
* tBodyGyroMag_std                                  tBodyGyroMag-std() 
* tBodyGyroJerkMag_mean                             tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag_std                              tBodyGyroJerkMag-std()
* fBodyAcc_mean_X                                   fBodyAcc-mean()-X     
* fBodyAcc_mean_Y                                   fBodyAcc-mean()-Y       
* fBodyAcc_mean_Z                                   fBodyAcc-mean()-Z
* fBodyAcc_std_X                                    fBodyAcc-std()-X
* fBodyAcc_std_Y                                    fBodyAcc-std()-Y     
* fBodyAcc_std_Z                                    fBodyAcc-std()-Z         
* fBodyAccJerk_mean_X                               fBodyAccJerk-mean()-X   
* fBodyAccJerk_mean_Y                               fBodyAccJerk-mean()-X
* fBodyAccJerk_mean_Z                               fBodyAccJerk-mean()-Z
* fBodyAccJerk_std_X                                fBodyAccJerk-std()-X
* fBodyAccJerk_std_Y                                fBodyAccJerk-std()-Y
* fBodyAccJerk_std_Z                                fBodyAccJerk-std()-Z
* fBodyGyro_mean_X                                  fBodyGyro-mean()-X
* fBodyGyro_mean_Y                                  fBodyGyro-mean()-Y  
* fBodyGyro_mean_Z                                  fBodyGyro-mean()-Z
* fBodyGyro_std_X                                   fBodyGyro-std()-X   
* fBodyGyro_std_Y                                   fBodyGyro-std()-Y  
* fBodyGyro_std_Z                                   fBodyGyro-std()-Z
* fBodyAccMag_mean                                  fBodyAccMag-mean()  
* fBodyAccMag_std                                   fBodyAccMag-std()
* fBodyBodyAccJerkMag_mean                          fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag_std                           fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag_mean                             fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag_std                              fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag_mean                         fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag_std                          fBodyBodyGyroJerkMag-std()


**average:**  The mean value of the feature by activity and subject_id.