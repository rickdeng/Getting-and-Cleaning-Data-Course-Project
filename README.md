# Read Me
The script (run_analysis.R) is written to download the source data set and then clean as required in the course project.

## Usage
Download run_analysis.R and run it. A txt named "cleaned_data.txt" will be saved in the folder "./UCI HAR Dataset". Please make sure you can access the source data set url properly.

## Steps introduction

### Step 0 - Load required packages and download the source data set
Before the script start to clean, the analysis code should check whether the required libraries are installed. If not installed the script should install them. Then load the required libraries Utils and Dplyr. Please refer to step 0.1 in the "run_analysis.R" for this step.

Step 0.2 is to download and unzip the source data set automatically. The unzipped file will be save to "(your working directory/UCI HAR Dataset)".

### Step 1 - Merges the training and the test sets to create one data set.

Accordig to the introduction of the source data (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). There are 30 test people in total (Subject 1 - 30). During the test there were 6 activities observed and recorded, i.e. the six activities in "./UCI HAR Dataset/activity_labels.txt". And the observed data are recorded as features whose names are introduced in "./UCI HAR Dataset/features_info.txt".

So the expected format of clean data should be as below (each variable a column and each observations a row):
  ++++++++++++++++++++++++++++++++++++++++++++++++++++
  Subject	Activity	FeatureName_1	...	FeatureName_n
++++++++++++++++++++++++++++++++++++++++++++++++++++
  XX       	XX       	XXXXXXX           		XXXXXXX
...

Please refer to comments 1.1 - 1.6 in run_analysis.R for the detailed steps and code.

### 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
Use grep to search out column names contain "std", "mean", "Subject" or "Activity" to meet the requirements of task 2.
After getting selected the numbering of column names, we can subset the whole data set by the selected column number.

### 3 - Uses descriptive activity names to name the activities in the data set.
According to "./UCI HAR Dataset/activity_labels.txt", there are six activities:
  1: WALKINGf
2: WALKING_UPSTAIRS
3: WALKING_DOWNSTAIRS
4: SITTING
5: STANDING
6: LAYING
By using function factor() we can labelling the Activity.

### 4 - Appropriately labels the data set with descriptive variable names.
To make the variable name more descriptive by following the principles below:
  (1) Descriptive
(2) Not duplicated
(3) Not have dots or white spaces
By using gsub and regular expression we can substitute special character in the names.

### 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
By using function group_by() and summarize_all() from Dplyr we can summarize the data set with the average of each variable for each acitivity and each subject
### output cleaned data, a txt named "cleaned_data.txt" will be saved in the folder "./UCI HAR Dataset"
By using write.table() the code can output cleaned data, a txt named "cleaned_data.txt" will be saved in the folder "./UCI HAR Dataset".