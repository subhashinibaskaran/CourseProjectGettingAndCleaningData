# CourseProjectGettingAndCleaningData
Course Project for the Coursera Course Getting and Cleaning Data

# **run_analysis.R**

### runanalysis.R file's goal is to prepare tidy data that can be used for later analysis.

The R Code written in run_analysis.R files constitutes the following 5 Goals

* Initially all the required files like activity_labels.txt, features.txt, features.txt info are read.
* Then the train Data files(X_train.txt, y_train.txt, subject_train.txt) and test data(X_test.txt, y_test.txt, subject_test.txt) files are read 

1. Merges the training and the test sets to create one data set.
  * The column names for the train data and test data set are assigned from the feautes text file.
  * The train data are column binded togeter
  * The test data are column binded together
  * The train data and test data are row binded together
  
2. Extracts only the measurements on the mean and standard deviation for each measurement.
  * A logical vector is created to find the column names which have mean() and std() values.
  * Only those column names that satisfy the criteria are extracted to a new data set.

3. Uses descriptive activity names to name the activities in the data set
  * The activity label file data set is merged with the extracted data set so that the activities get their descriptive activity names.
  
  
4. Appropriately labels the data set with descriptive variable names.
  * The column names are changed in order to make it readable. Example t is changed to timeDomain, f is changed to frequencyDomain, acc is changed to Accelerometer etc.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  * The data is aggregated using the activityID for each subject and their means are calculated.
  * This data is stored to a new file called tidyData.txt
