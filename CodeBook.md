---
title: "CodeBook"
date: "January 28, 2016"
output: html_document
---

#**Code Book for Getting and Cleaning Data Tidy Data Set**

This code book summarizes the variables of the tidy dataset created by run_analysis.R

There are a total of 180 observations in the tidy data file with 21 variables.

**Variables:**

1. activityID - ID of the activity Performed (1,2,3,4,5,6)
2. activityType - Description of the activity Done 
	* 1 - WALKING
	* 2 - WALKING_UPSTAIRS
	* 3 - WALKING_DOWNSTAIRS
	* 4 - SITTING
	* 5 - STANDING
	* 6 - LAYING
3. subjectID - ID of the subject(i.e the person who performed the activity)
  It takes values from 1 to 30

The Mean and Standard Deviation Variables are as follows:
These fields are averages calculated for each activity on each subject.

4. timeDomainBodyAccelerometerMagnitudeMean
5. timeDomainBodyAccelerometerMagnitudeStdDeviation
6. timeDomainGravityAccelerometerMagnitudeMean
7. timeDomainGravityAccelerometerMagnitudeStdDeviation
8. timeDomainBodyAccelerometerJerkMagnitudeMean
9. timeDomainBodyAccelerometerJerkMagnitudeStdDeviation
10. timeDomainBodyGyroscopeMagnitudeMean
11. timeDomainBodyGyroscopeMagnitudeStdDeviation
12. timeDomainBodyGyroscopeJerkMagnitudeMean
13. timeDomainBodyGyroscopeJerkMagnitudeStdDeviation
14. frequencyDomainBodyAccelerometerMagnitudeMean
15. frequencyDomainBodyAccelerometerMagnitudeStdDeviation
16. frequencyDomainBodyBodyAccelerometerJerkMagnitudeMean
17. frequencyDomainBodyBodyAccelerometerJerkMagnitudeStdDeviation
18. frequencyDomainBodyBodyGyroscopeMagnitudeMean
19. frequencyDomainBodyBodyGyroscopeMagnitudeStdDeviation
20. frequencyDomainBodyBodyGyroscopeJerkMagnitudeMean
21. frequencyDomainBodyBodyGyroscopeJerkMagnitudeStdDeviation