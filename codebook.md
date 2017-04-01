
# CODE BOOK
## Data Set Code Book for Data Collected From the Accelerometers From the Samsung Galaxy S Smartphone
April 1, 2017

Prepared based on data set cleaned by runing the R script "run_analysis.R".

**1. Introduction**

  The source data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
  
**2. Variables**
  
  *1. subject*
  
  the subject who performed the activity for each window sample. Its range is from 1 to 30.


*2. activity*

  Each person performed six activitiesï¼?
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


*3. Measurements (66 in total):*

  The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. (t: time / f: frequency)
  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
The set of variables that were estimated from these signals are: 
  MEAN: Mean value
STD: Standard deviation

1. tBodyAccMEAN_X
2. tBodyAccMEAN_Y
3. tBodyAccMEAN_Z
4. tBodyAccSTD_X
5. tBodyAccSTD_Y
6. tBodyAccSTD_Z
7. tGravityAccMEAN_X
8. tGravityAccMEAN_Y
9. tGravityAccMEAN_Z
10. tGravityAccSTD_X
11. tGravityAccSTD_Y
12. tGravityAccSTD_Z
13. tBodyAccJerkMEAN_X
14. tBodyAccJerkMEAN_Y
15. tBodyAccJerkMEAN_Z
16. tBodyAccJerkSTD_X
17. tBodyAccJerkSTD_Y
18. tBodyAccJerkSTD_Z
19. tBodyGyroMEAN_X
20. tBodyGyroMEAN_Y
21. tBodyGyroMEAN_Z
22. tBodyGyroSTD_X
23. tBodyGyroSTD_Y
24. tBodyGyroSTD_Z
25. tBodyGyroJerkMEAN_X
26. tBodyGyroJerkMEAN_Y
27. tBodyGyroJerkMEAN_Z
28. tBodyGyroJerkSTD_X
29. tBodyGyroJerkSTD_Y
30. tBodyGyroJerkSTD_Z
31. tBodyAccMagMEAN
32. tBodyAccMagSTD
33. tGravityAccMagMEAN
34. tGravityAccMagSTD
35. tBodyAccJerkMagMEAN
36. tBodyAccJerkMagSTD
37. tBodyGyroMagMEAN
38. tBodyGyroMagSTD
39. tBodyGyroJerkMagMEAN
40. tBodyGyroJerkMagSTD
41. tBodyAccMEAN_X
42. fBodyAccMEAN_Y
43. fBodyAccMEAN_Z
44. fBodyAccSTD_X
45. fBodyAccSTD_Y
46. fBodyAccSTD_Z
47. fBodyAccJerkMEAN_X
48. fBodyAccJerkMEAN_Y
49. fBodyAccJerkMEAN_Z
50. fBodyAccJerkSTD_X
51. fBodyAccJerkSTD_Y
52. fBodyAccJerkSTD_Z
53. fBodyGyroMEAN_X
54. fBodyGyroMEAN_Y
55. fBodyGyroMEAN_Z
56. fBodyGyroSTD_X
57. fBodyGyroSTD_Y
58. fBodyGyroSTD_Z
59. fBodyAccMagMEAN
60. fBodyAccMagSTD
61. fBodyBodyAccJerkMagMEAN
62. fBodyBodyAccJerkMagSTD
63. fBodyBodyGyroMagMEAN
64. fBodyBodyGyroMagSTD
65. fBodyBodyGyroJerkMagMEAN
66. fBodyBodyGyroJerkMagSTD