rm(list = ls())

library(dplyr)

## Goal 1: Merge the training and the test sets to create one data set.

## Reading data from the files

## Reading Common Data
activityLabelData <- read.table("./CourseProject/UCI HAR Dataset/activity_labels.txt", header = FALSE)
featuresData <- read.table("./CourseProject/UCI HAR Dataset/features.txt", header = FALSE)

## Reading Train Data
subjectTrainData <- read.table("./CourseProject/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
XTrainData <- read.table("./CourseProject/UCI HAR Dataset/train/X_train.txt", header = FALSE)
yTrainData <- read.table("./CourseProject/UCI HAR Dataset/train/y_train.txt", header = FALSE)

## Reading Test Data
subjectTestData <- read.table("./CourseProject/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
XTestData <- read.table("./CourseProject/UCI HAR Dataset/test/X_test.txt", header = FALSE)
yTestData <- read.table("./CourseProject/UCI HAR Dataset/test/y_test.txt", header = FALSE)

## Assigning Column Names for the DataSets
colnames(activityLabelData) <- c("activityID", "activityType")
colnames(subjectTrainData) <- "subjectID"
colnames(XTrainData) <- featuresData[,2]
colnames(yTrainData) <- "activityID"
colnames(subjectTestData) <- "subjectID"
colnames(XTestData) <- featuresData[,2]
colnames(yTestData) <- "activityID"

## Combining the Training Data
trainData <- cbind(subjectTrainData, yTrainData, XTrainData)

## Combining the Test Data
testData <- cbind(subjectTestData, yTestData, XTestData)

## Merging the Train Data and the Test Data
totalData <- rbind(trainData, testData)

## Goal 2: Extract only the measurements on the mean and standard deviation for each measurement.

## Getting the Column Names of the total Data
colNames <- colnames(totalData)

## extracting a logical vector which returns TRUE for the column names with 
## activity id, subject id, 
## mean() excluding meanfreqs and mean()-X or Y,
## std() excluding std()-X,Y or Z
logicalMeanStdVector <- (grepl("activity", colNames) | 
                           grepl("subject", colNames) | 
                           (grepl("-mean..", colNames) & !grepl("-meanFreq..", colNames) & !grepl("mean..-", colNames)) | 
                           (grepl("-std..", colNames) & !grepl("std()..-", colNames)))

## Storing only those TRUE column Names from the logical vector
meanStdDataSet <- totalData[logicalMeanStdVector == TRUE]

## Goal 3: Uses descriptive activity names to name the activities in the data set

## Merge Data of activity data set and our mean std data set by the activity id
## so that the activity type column is added to each activity ID
mergedData <- merge(activityLabelData, meanStdDataSet, by = "activityID")

mergedColNames <- colnames(mergedData)

## Goal 4: Appropriately labels the data set with descriptive variable names

newColNames <- gsub("^t","timeDomain", mergedColNames)  
newColNames <- gsub("^f","frequencyDomain", newColNames) 
newColNames <- gsub("\\-","", newColNames) 
newColNames <- gsub("[Mm]ag","Magnitude", newColNames) 
newColNames <- gsub("\\()","", newColNames) 
newColNames <- gsub("[Mm]ean","Mean", newColNames) 
newColNames <- gsub("[Ss]td","StdDeviation", newColNames)
newColNames <- gsub("[Aa]cc","Accelerometer", newColNames)
newColNames <- gsub("[Gg]yro","Gyroscope", newColNames)

## Assign the new Column Names created to the merged Data Set
colnames(mergedData) = newColNames

## Goal 5: From the data set in step 4, creates a second, 
## independent tidy data set with the average of each 
## variable for each activity and each subject

## For Convenience excluding the activity Type from the data
mergedDataExcludingActivityType <- mergedData[, colnames(mergedData) != "activityType"]

## Grouping by the activityID and subjectID and finding the mean of all the remaining columns
aggregatedData <- aggregate(mergedDataExcludingActivityType[, colnames(mergedDataExcludingActivityType) 
                                                     != c("activityID", "subjectID")], 
                     by = list(activityID = mergedDataExcludingActivityType$activityID, 
                               subjectID = mergedDataExcludingActivityType$subjectID), 
                     mean)

## Now adding Back the activity Type
finalData <- merge(activityLabelData, aggregatedData, by = "activityID")

## Writing The Data to the file
write.table(finalData, "./CourseProject/tidyData.txt", row.names = FALSE, sep = "\t")






