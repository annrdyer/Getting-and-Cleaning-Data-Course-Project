## This script merges training and test data sets collected from an experiment that used accelerometers from Samsung Galaxy S smartphone.
## The script calculates the average for each subject and experimental activity for mean and standard deviation measurements only.


## Read in list of features measured
measurements <- read.table("./features.txt", col.names=c("feature_id", "feature") )


## Clean up measurement feature names to make suitable column names by replacing "-" and  "," and "()" with "_"
measurements$clean1 <- gsub("\\()-","_",measurements$feature,)
measurements$clean2 <- gsub("\\()","_",measurements$clean1,)
measurements$clean3<- gsub("-","_",measurements$clean2,)
measurements$clean4 <- gsub("\\,","_",measurements$clean3,)
measurements$clean5 <- gsub("[_]$","",measurements$clean4,)

feature_names <- as.vector(measurements$clean5,mode='character')


## Read training data sets
x_train <- read.table("./X_train.txt", col.names=feature_names)
y_train <- read.table("./y_train.txt", col.names=("activity_code"))
subject_train <- read.table("./subject_train.txt", col.names=("subject_id"))

## Read test data sets
x_test <- read.table("./X_test.txt", col.names=feature_names)
y_test <- read.table("./y_test.txt", col.names=("activity_code"))
subject_test <- read.table("./subject_test.txt", col.names=("subject_id"))



## 66 of 561 measurements are mean and standard deviation measurements (feature names include mean() or std() )
## Determine which measurements are the 66 mean and standard deviation measurements
splitNames = strsplit(names(x_train),"_")
secondElement <- function(x){x[2]} 
stat_type <- sapply(splitNames,secondElement)
mean_std_boolean  <- (stat_type =="mean" | stat_type =="std")


## Extract only the mean and standard deviation measurements from the train and test data sets
x_train_subset <- x_train[,mean_std_boolean]
x_test_subset  <- x_test[,mean_std_boolean]


## Combine subject, activity, and measurement data sets
train <- cbind(subject_train,y_train,x_train_subset)
test  <- cbind(subject_test,y_test,x_test_subset)

## Combine train and test data sets
allData <- rbind(train,test)


## Read activity code and labels
activity_labels <- read.table("./activity_labels.txt", col.names=c("activity_code", "activity"))

## Add desciptive activity names to the combined data set
activityData = merge(activity_labels,allData,by.x="activity_code",by.y="activity_code",all=FALSE)


## Create tidy data set with the average of each variable for each activity and each subject
library(reshape2)
dataMelt <- melt(activityData,id=c("activity_code", "activity","subject_id"),measures.vars=names(x_train_subset))
tidyDataMeans <- dcast(dataMelt, activity + subject_id ~ variable, mean)


## Create long tidy data set of means for easier viewing by graders
stackedDataMeans <- melt(tidyDataMeans,id=c("activity","subject_id"),measures.vars=names(x_train_subset))


## Give long format of tidy data set descriptive column names
## The long format data set has 4 columns (activity, subject_id, feature, average)
## The long format data set has 11,800 rows: (30 subjects x 6 activities x 66 measurements)
library(plyr)
stackedTidyDataMeans <- rename(stackedDataMeans, c("variable"="feature", "value"="average"))


## Write tidy data set to text file in working directory
write.table(stackedTidyDataMeans, file="./tidyDataSet.txt", row.names=FALSE)



