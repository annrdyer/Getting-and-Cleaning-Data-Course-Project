**run_analysis.R** is an R script that reads in experimental data in text files and combines the text files into a tidy data set. 


This website contain all input text files and a full description of the experiment and the raw data:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 



**Running the Script:** 

To run the run_analysis.R script all 8 text files listed below must be in the working directory:

*features.txt
*activity_labels.txt
*x_train.txt
*y_train.txt
*subject_train.txt
*x_text.txt
*y_test.txt
*subject_test.txt


**Output of the Script:**  

The script creates a tidy data set containing the average of mean and standard deviation features for each activity and each subject in the experiment. 
66 features that contained "mean()" or "std()" in the feature name are included in the tidy data set.
A long format was used for the tidy data set.  The tidy data set variables are described in the code book.
The data frame name of the tidy data set is **stackedTidyDataMeans**.


**Code Book:** 

The code book contains a description and listing of the variables contained in the tidy data set. 
