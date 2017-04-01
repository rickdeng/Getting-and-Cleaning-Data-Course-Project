## run_analysis.R
## 1 April 2017
## This script is for cleaning a data set (data collected from the accelerometers from the Samsung Galaxy S smartphone) and preparing tidy data that can be used for later analysis.

## Step 0 - Initiation
## 0.1 - Check and load packages
if(!require("utils")) {
  install.packages("utils")
}
if(!require("dplyr")) {
  install.packages("dplyr")
}
library(c("utils", "dplyr"))

## 0.2 - Download and unzip the data set. The data set can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. By running this scipt, the data set will be automatically downloaded and unziped to "(your working directory)/UCI HAR Dataset".
dataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
downloadedFile <- paste(getwd(), "dataset.zip", sep = "/")
download.file(dataUrl, downloadedFile)
unzip(downloadedFile)

## Step 1 - Merges the training and the test sets to create one data set.
## Accordig to the introduction of the source data (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). There are 30 test people in total (Subject 1 - 30). During the test there were 6 activities observed and recorded, i.e. the six activities in "./UCI HAR Dataset/activity_labels.txt". And the observed data are recorded as features whose names are introduced in "./UCI HAR Dataset/features_info.txt".
## So the expected format of clean data should be as below (each variable a column and each observations a row):
## --------------------------------------------------
## Subject  Activity  FeatureName_1 ... FeatureName_n
## --------------------------------------------------
## XX       XX        XXXXXXX           XXXXXXX
## ...
## Steps below are to read test and training data set respectivelly and finally merge them as one dataset:
## 1.1 - get and parse feature name
featureTable <- read.table("./UCI HAR Dataset/features.txt", col.names = c("Number", "FeatureName"))
featureName <- as.character(featureTable$FeatureName)

## 1.2 - read test data
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
testFeature <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featureName)

## 1.3 - generate test data set
testData <- cbind(testSubject, testActivity, testFeature)

## 1.4 - read train data
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="Subject")
trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
trainFeature <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featureName)

## 1.5 - generate train data set
trainData <- cbind(trainSubject, trainActivity, trainFeature)

## 1.6 - merge test and train and test data set
mergedData <- rbind(testData, trainData)

## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## 2.1 Use regular expression and grep to find out the measurements on the mean and standard deviation.
mergedDataNames <- names(mergedData)
extractedNames <- grep("*std\\.|*mean\\.|Subject|Activity", mergedDataNames)
extractedData <- mergedData[,extractedNames]

## 3 - Uses descriptive activity names to name the activities in the data set.
## According to "./UCI HAR Dataset/activity_labels.txt", there are six activities:
## 1: WALKINGf
## 2: WALKING_UPSTAIRS
## 3: WALKING_DOWNSTAIRS
## 4: SITTING
## 5: STANDING
## 6: LAYING
extractedData$Activity <- factor(extractedData$Activity, levels = c(1,2,3,4,5,6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

## 4 - Appropriately labels the data set with descriptive variable names.
## To make the variable name more descriptive by following the principles below:
## (1) Descriptive
## (2) Not duplicated
## (3) Not have dots or white spaces
dataSetNames <- names(extractedData)
## 4.1 - remove dots
dataSetNames <- gsub("*\\.mean", "MEAN", dataSetNames)
dataSetNames <- gsub("*\\.std", "STD", dataSetNames)
## 4.2 - change 3 consecutive dots to underscore(to make x/y/z clear)
dataSetNames <- gsub("*\\.\\.\\.", "_", dataSetNames)
## 4.3 - delete 2 consecutive dots at the end of variable
dataSetNames <- gsub("\\.\\.$", "", dataSetNames)
names(extractedData) <- dataSetNames

## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
subjectActivity <- group_by(extractedData, Subject, Activity)
sumarizedExtractedData <- summarize_all(subjectActivity, mean)

## output cleaned data, a txt named "cleaned_data.txt" will be saved in the folder "./UCI HAR Dataset"
write.table(sumarizedExtractedData, file="./UCI HAR Dataset/cleaned_dataset.txt", row.names = FALSE)