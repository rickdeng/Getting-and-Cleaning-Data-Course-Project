
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

4. tBodyAccMEAN_X
5. tBodyAccMEAN_Y
5. tBodyAccMEAN_Z
6. tBodyAccSTD_X
7. tBodyAccSTD_Y
8. tBodyAccSTD_Z
9. tGravityAccMEAN_X
10. tGravityAccMEAN_Y
11. tGravityAccMEAN_Z
12. tGravityAccSTD_X
13. tGravityAccSTD_Y
14. tGravityAccSTD_Z
15. tBodyAccJerkMEAN_X
16. tBodyAccJerkMEAN_Y
17. tBodyAccJerkMEAN_Z
18. tBodyAccJerkSTD_X
19. tBodyAccJerkSTD_Y
20. tBodyAccJerkSTD_Z
21. tBodyGyroMEAN_X
22. tBodyGyroMEAN_Y
23. tBodyGyroMEAN_Z
24. tBodyGyroSTD_X
25. tBodyGyroSTD_Y
26. tBodyGyroSTD_Z
27. tBodyGyroJerkMEAN_X
28. tBodyGyroJerkMEAN_Y
29. tBodyGyroJerkMEAN_Z
30. tBodyGyroJerkSTD_X
31. tBodyGyroJerkSTD_Y
32. tBodyGyroJerkSTD_Z
33. tBodyAccMagMEAN
34. tBodyAccMagSTD
35. tGravityAccMagMEAN
36. tGravityAccMagSTD
37. tBodyAccJerkMagMEAN
38. tBodyAccJerkMagSTD
39. tBodyGyroMagMEAN
40. tBodyGyroMagSTD
41. tBodyGyroJerkMagMEAN
42. tBodyGyroJerkMagSTD
43. tBodyAccMEAN_X
44. fBodyAccMEAN_Y
45. fBodyAccMEAN_Z
46. fBodyAccSTD_X
47. fBodyAccSTD_Y
48. fBodyAccSTD_Z
49. fBodyAccJerkMEAN_X
50. fBodyAccJerkMEAN_Y
51. fBodyAccJerkMEAN_Z
52. fBodyAccJerkSTD_X
53. fBodyAccJerkSTD_Y
54. fBodyAccJerkSTD_Z
55. fBodyGyroMEAN_X
56. fBodyGyroMEAN_Y
57. fBodyGyroMEAN_Z
58. fBodyGyroSTD_X
59. fBodyGyroSTD_Y
60. fBodyGyroSTD_Z
61. fBodyAccMagMEAN
62. fBodyAccMagSTD
63. fBodyBodyAccJerkMagMEAN
64. fBodyBodyAccJerkMagSTD
65. fBodyBodyGyroMagMEAN
66. fBodyBodyGyroMagSTD
67. fBodyBodyGyroJerkMagMEAN
68. fBodyBodyGyroJerkMagSTD