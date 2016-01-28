---
title: "CodeBook"
date: "January 28, 2016"
output: html_document
---

#**Code Book for Getting and Cleaning Data Tidy Data Set**

This code book summarizes the variables of the tidy dataset created by run_analysis.R

There are a total of 180 observations in the tidy data file with 21 variables.

**Variables:**

* activityID - ID of the activity Performed (1,2,3,4,5,6)
* activityType - Description of the activity Done 
	* 1 - WALKING
	* 2 - WALKING_UPSTAIRS
	* 3 - WALKING_DOWNSTAIRS
	* 4 - SITTING
	* 5 - STANDING
	* 6 - LAYING
* subjectID - ID of the subject(i.e the person who performed the activity)
  It takes values from 1 to 30

The Mean and Standard Deviation Variables are as follows:
These fields are averages calculated for each activity on each subject.

* timeDomainBodyAccelerometerMagnitudeMean
* timeDomainBodyAccelerometerMagnitudeStdDeviation
* timeDomainGravityAccelerometerMagnitudeMean
* timeDomainGravityAccelerometerMagnitudeStdDeviation
* timeDomainBodyAccelerometerJerkMagnitudeMean
* timeDomainBodyAccelerometerJerkMagnitudeStdDeviation
* timeDomainBodyGyroscopeMagnitudeMean
* timeDomainBodyGyroscopeMagnitudeStdDeviation
* timeDomainBodyGyroscopeJerkMagnitudeMean
* timeDomainBodyGyroscopeJerkMagnitudeStdDeviation
* frequencyDomainBodyAccelerometerMagnitudeMean
* frequencyDomainBodyAccelerometerMagnitudeStdDeviation
* frequencyDomainBodyBodyAccelerometerJerkMagnitudeMean
* frequencyDomainBodyBodyAccelerometerJerkMagnitudeStdDeviation
* frequencyDomainBodyBodyGyroscopeMagnitudeMean
* frequencyDomainBodyBodyGyroscopeMagnitudeStdDeviation
* frequencyDomainBodyBodyGyroscopeJerkMagnitudeMean
* frequencyDomainBodyBodyGyroscopeJerkMagnitudeStdDeviation