CODEBOOK.md
===========
Getting and Cleaning Data

Course Project 

Doug McCaleb


Overview
========

The data for this project come from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#.

        Human Activity Recognition Using Smartphones Data Set 
        Download: Data Folder, Data Set Description
        
        Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing 
        activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial 
        sensors.
        
        Data Set Characteristics:  
         
        Multivariate, Time-Series
         
        Number of Instances: 10299
         
        Area: Computer
 
        Attribute Characteristics:  N/A
         
        Number of Attributes: 561
         
        Date Donated 2012-12-10
                
        Associated Tasks: Classification, Clustering
         
        Missing Values? N/A         
        
        Source:
        
        Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
        Smartlab - Non Linear Complex Systems Laboratory 
        DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. 
        activityrecognition '@' smartlab.ws 
        www.smartlab.ws 

Data Set Information:

Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 

Citation: This overview is by way of the following sources:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit√  degli Studi di Genova, Genoa I-16145, Italy. activityrecognition '@' smartlab.ws www.smartlab.ws

Detailed Data Inventory
=======================

Data Shared by Test and Train
-----------------------------
 
        
        Source File             Data Description
        
        activity_labels.txt     Names of activities, to be looked up based on activity 
                                numbers in the y_test.txt file
        
        features.txt            Feature names related to the columns of the x_test data
                                This file lists feature names down its first column, and 
                                these names must be used horizontally across the 
                                x_test.txt and x_train.txt data, below, as column names.

Test Measurement Data
---------------------
        
 The following data are summarized in Measurement Data Summary, below.

         Source File            Data Description

         body_acc_x_test.txt    Body acceleration x-axis data related to rows of test data
         body_acc_y_test.txt    Body acceleration y-axis data related to rows of test data
         body_acc_z_test.txt    Body acceleration z-axis data related to rows of test data
         body_gyro_x_test.txt   Body gyroscopic x-axis data related to rows of test data
         body_gyro_y_test.txt   Body gyroscopic y-axis data related to rows of test data
         body_gyro_z_test.txt   Body gyroscopic z-axis data related to rows of test data
         total_acc_x_test.txt   Total acceleration x-axis data related to rows of test data
         total_acc_y_test.txt   Total acceleration y-axis data related to rows of test data 
         total_acc_z_test.txt   Total acceleration z-axis data related to rows of test data

Test Analysis Data 
------------------

 The following data are summarized in Analysis Data Summary, below.
         
         Source File            Data Description
        
         subject_test.txt       Identifier numbers of subjects (people) related to rows of test data
                                One row for each row of feature data from x_test.txt
                                Add to feature data by cbind
         
         y_test.txt             Identifier numbers of actvities related to rows of test data
                                One row for each row of feature data from x_test.txt
                                These numbers are used to look up activity names that 
                                are in the variable called activity_labels which comes 
                                from activity_labels.txt
         
         x_test.txt             561-column-wide test data described in Analysis Data Summary, below 
                                These are the data that go in the columns named in 
                                features.txt, above, and are the results of analysis 
                                on the observation vectors in the body_ and total_ files 
                                below in Test Measurement Data.
         
Train Measurement Data
----------------------

 The following data are summarized in Measurement Data Summary, below.

         Source File            Data Description

         body_acc_x_train.txt   Body acceleration x-axis data related to rows of train data
         body_acc_y_train.txt   Body acceleration y-axis data related to rows of train data
         body_acc_z_train.txt   Body acceleration z-axis data related to rows of train data
         body_gyro_x_train.txt  Body gyroscopic x-axis data related to rows of train data
         body_gyro_y_train.txt  Body gyroscopic y-axis data related to rows of train data
         body_gyro_z_train.txt  Body gyroscopic z-axis data related to rows of train data
         total_acc_x_train.txt  Total acceleration x-axis data related to rows of train data
         total_acc_y_train.txt  Total acceleration y-axis data related to rows of train data 
         total_acc_z_train.txt  Total acceleration z-axis data related to rows of train data

Train Analysis Data
-------------------

 The following data are summarized in Analysis Data Summary, below.

         Source File            Data Description
         
         subject_train.txt      Identifier numbers of subjects (people) related to rows of train data. 
                                One row for each row of feature data from x_train.txt
         
         y_train.txt            Identifier numbers of actvities related to rows of train data
                                One row for each row of feature data from x_train.txt
                                                                
         x_train.txt            561-column-wide train data described in Analysis Data Summary, below 
                                These are the data that go in the columns named in 
                                features.txt, above, and are the results of analysis 
                                on the observation vectors in the body_ and total_ 
                                files below in Train Measurement Data.


Measurement Data Summary
========================

 The following summarizes how the measurement data were obtained.  

 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

 The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data, resulting in nine unique subjects for the test data, and 21 unique subjects for the train data.

 The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 

 This approach results in one data file each for accelerometer and gyroscope data for each of three axes, labeled, x, y, and z, for a total of six measurement data files.  Additionally, the provider summarized accelration totals for each of the three access, resulting in nine total files for test and nine total files for train, each of which contains 128 variables of unspecified information.   

Analysis Data Summary
=====================

 Our deliverable data set is predicated on the following data structure.

 From each window created in the measurement process above, a vector of features was obtained by calculating variables from the time and frequency domain. 

 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.   Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

 Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

 Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

 These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

         tBodyAcc-XYZ
         tGravityAcc-XYZ
         tBodyAccJerk-XYZ
         tBodyGyro-XYZ
         tBodyGyroJerk-XYZ
         tBodyAccMag
         tGravityAccMag
         tBodyAccJerkMag
         tBodyGyroMag
         tBodyGyroJerkMag
         fBodyAcc-XYZ
         fBodyAccJerk-XYZ
         fBodyGyro-XYZ
         fBodyAccMag
         fBodyAccJerkMag
         fBodyGyroMag
         fBodyGyroJerkMag 

 The set of variables that were estimated from these signals are: 

         mean(): Mean value
         std(): Standard deviation
         mad(): Median absolute deviation 
         max(): Largest value in array
         min(): Smallest value in array
         sma(): Signal magnitude area
         energy(): Energy measure. Sum of the squares divided by the number of values. 
         iqr(): Interquartile range 
         entropy(): Signal entropy
         arCoeff(): Autorregresion coefficients with Burg order equal to 4
         correlation(): correlation coefficient between two signals
         maxInds(): index of the frequency component with largest magnitude
         meanFreq(): Weighted average of the frequency components to obtain a mean frequency
         skewness(): skewness of the frequency domain signal 
         kurtosis(): kurtosis of the frequency domain signal 
         bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
         angle(): Angle between to vectors.

 Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

         gravityMean
         tBodyAccMean
         tBodyAccJerkMean
         tBodyGyroMean
         tBodyGyroJerkMean
         
 Vernacular naming was accomplished by translating names provided in the data using guidance outlined above as to the *probable* meaning of the name.  Name translations are depicted in the Appendix, Feature Names Vernacular Translation, below, for reference.
 

Summary of Data Merge
=====================

Our deliverable requires us to consolidate the data provided into one data set.  We do this by re-combining the data along its normal dimensions, outlined above, so that we have named activities and commensurable variable names across test and train, and so we can associate measurement data with analsyis data in the same observation, or row, of the merged data set. 

Our resulting merged data set, semi_tidy_data_set, has these characteristics:

        Column Name                             Column Number           Source
        
        Observation number                      1                       Serial by row
        "Test" or "Train" Indicator             2                       Hard coded based on data source
        Activity Number                         3                       y_test/train
        Activity Name                           4                       activity_labels assigned based on Activity Number
        Subject Number                          5                       subjects_test/train
        561 feature columns                     6 - 566                 x_test/train
        Body Acceleration x-Axis                567 - 694               body_acc_x_test/train
        Body Acceleration y-Axis                695 - 822               body_acc_y_test/train
        Body Acceleration z-Axis                823 - 950               body_acc_z_test/train
        Body Gyroscopic x-Axis                  951 - 1078              body_gyro_x_test/train
        Body Gyroscopic y-Axis                  1079 - 1206             body_gyro_y_test/train
        Body Gyroscopic z-Axis                  1207 - 1334             body_gyro_z_test/train
        Total Acceleration x-Axis               1335 - 1462             total_acc_x_test/train
        Total Acceleration y-Axis               1463 - 1590             total_acc_y_test/train
        Total Acceleration z-Axis               1591 - 1718             total_acc_z_test/train
        
        The row counts are as follows:
        
        Data Type                               Row Count
        
        Test                                     2,947
        Train                                    7,352
        
        Total Row Count                         10,299
        
        Total dimensions of the intial merge of the data in the .zip file is 10,299 rows and 1,718 columns.
                
 This data structure is in semi_tidy_data_set in run_analsyis.R, and run_analysis.R writes semi_tidy_data_set.txt to disc.
        
Summary of Extract
==================

For the creation of our extract of columns containing means and standard deviations, we relied on the information in Analysis Data Summary, above, and subsetted the merged data set by selecting those measurement and analysis data columns that contained the string 'mean' or the string 'std'.

This resulted in an extract data set, first_tidy_data_set, having the following characteristics.

                                                                        Column 
        Column Name                                                     Number	        Source

        Observation_Number                                                       1	Serial by row
        Test_or_Train                                                            2	Hard coded based on data source
        Activity_Number                                                          3	y_test/train
        Activity_Name	                                                         4	activity_labels 
        Subject	                                                                 5	subjects_test/train
        Time_Domain_Body_Acceleration_Mean_X	                                 6	x_test/train
        Time_Domain_Body_Acceleration_Mean_Y	                                 7	x_test/train
        Time_Domain_Body_Acceleration_Mean_Z	                                 8	x_test/train
        Time_Domain_Body_Acceleration_Standard_Deviation_Z                       9	x_test/train
        Time_Domain_Body_Acceleration_Standard_Deviation_Y                       10	x_test/train
        Time_Domain_Body_Acceleration_Standard_Deviation_Z                       11	x_test/train
        Time_Domain_Gravity_Acceleration_Mean_X	                                 12	x_test/train
        Time_Domain_Gravity_Acceleration_Mean_Y	                                 13	x_test/train
        Time_Domain_Gravity_Acceleration_Mean_Z	                                 14	x_test/train
        Time_Domain_Gravity_Acceleration_Standard_Deviation_X	                 15	x_test/train
        Time_Domain_Gravity_Acceleration_Standard_Deviation_Y	                 16	x_test/train
        Time_Domain_Gravity_Acceleration_Standard_Deviation_Z	                 17	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Mean_X                                18	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Mean_Y                                19	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Mean_Z                                20	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_X	                 21	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_Y	                 22	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_Z	                 23	x_test/train
        Time_Domain_Body_Gyroscopic_Mean_X                                       24	x_test/train
        Time_Domain_Body_Gyroscopic_Mean_Y                                       25	x_test/train
        Time_Domain_Body_Gyroscopic_Mean_Z                                       26	x_test/train
        Time_Domain_Body_Gyroscopic_Standard_Deviation_X                         27	x_test/train
        Time_Domain_Body_Gyroscopic_Standard_Deviation_Y                         28	x_test/train
        Time_Domain_Body_Gyroscopic_Standard_Deviation_Z                         29	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Mean_X	                                 30	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Mean_Y	                                 31	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Mean_Z	                                 32	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_X	                 33	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_Y	                 34	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_Z	                 35	x_test/train
        Time_Domain_Body_Acceleration_Magnitude_Mean	                         36	x_test/train
        Time_Domain_Body_Acceleration_Magnitude_Standard_Deviation               37	x_test/train
        Time_Domain_Gravity_Acceleration_Magnitude_Mean	                         38	x_test/train
        Time_Domain_Gravity_Acceleration_Magnitude_Standard_Deviation	         39	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Magnitude_Mean                        40	x_test/train
        Time_Domain_Body_Acceleration_Jerk_Magnitude_Standard_Deviation	         41	x_test/train
        Time_Domain_Body_Gyroscopic_Magnitude_Mean                               42	x_test/train
        Time_Domain_Body_Gyroscopic_Magnitude_Standard_Deviation                 43	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Mean	                         44	x_test/train
        Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Standard_Deviation	         45	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_X                                46	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_Y                                47	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_Z                                48	x_test/train
        Frequency_Domain_Body_Acceleration_Standard_Deviation_X	                 49	x_test/train
        Frequency_Domain_Body_Acceleration_Standard_Deviation_Y	                 50	x_test/train
        Frequency_Domain_Body_Acceleration_Standard_Deviation_Z	                 51	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_Freq_X	                         52	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_Freq_Y	                         53	x_test/train
        Frequency_Domain_Body_Acceleration_Mean_Freq_Z	                         54	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_X	                         55	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_Y	                         56	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_Z	                         57	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_X	         58	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_Y	         59	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_Z	         60	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_X                      61	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_Y                      62	x_test/train
        Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_Z                      63	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_X	                                 64	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_Y	                                 65	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_Z	                                 66	x_test/train
        Frequency_Domain_Body_Gyroscopic_Standard_Deviation_X	                 67	x_test/train
        Frequency_Domain_Body_Gyroscopic_Standard_Deviation_Y	                 68	x_test/train
        Frequency_Domain_Body_Gyroscopic_Standard_Deviation_Z	                 69	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_Freq_X	                         70	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_Freq_Y	                         71	x_test/train
        Frequency_Domain_Body_Gyroscopic_Mean_Freq_Z	                         72	x_test/train
        Frequency_Domain_Body_Acceleration_Magnitude_Mean                        73	x_test/train
        Frequency_Domain_Body_Acceleration_Magnitude_Standard_Deviation	         74	x_test/train
        Frequency_Domain_Body_Acceleration_Magnitude_Mean_Freq	                 75	x_test/train
        Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Mean               76	x_test/train
        Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Standard_Deviation 77	x_test/train
        Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Mean_Freq	         78	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Mean                      79	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Standard_Deviation        80	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Mean_Freq                 81	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Mean                 82	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Standard_Deviation	 83	x_test/train
        Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Mean_Freq	         84	x_test/train

        
        The row counts are as follows:
        
        Data Type                               Row Count
        
        Test                                     2,947
        Train                                    7,352
        
        Total Row Count                         10,299
        
        Total dimensions of the extract of means and standard deviations is 10,299 rows and 84 columns.
        
This data structure is in first_tidy_data_set in run_analsyis.R, and run_analysis.R writes first_tidy_data_set.txt to disc.
        
Summary of Deliverable
======================

 Our approach to this takes the domain of data as all-inclusive, as there is no restriction in the instruction. Therefore,
 for the deliverable, second_independent_tidy_data_set, we began with the data in the merge data set.
 
 Our approach also makes the inferrence that the instruction intends to convey that we strike the mean of each variable 
 for every unique combination of activity and subject, as the alternative data structure of combining domain-wide means
 for each activity with separate domain-wide means for each subject into one data set would appear to lack any rational 
 purpose.

 Aggregate() -- We use the aggregate() function to strike the means based on the grouping criteria in the instructions, 
 passing activty number and subject to the by argument in a list, and passing 'mean' to the FUN agrument.
         
         '''{r}
         semi_second_independent_tidy_data_set <- aggregate(x = semi_tidy_data_set[, 6:ncol(semi_tidy_data_set)], 
                                                                by = list(semi_tidy_data_set$Activity_Number, 
                                                                          semi_tidy_data_set$Subject), 
                                                                FUN = "mean", 
                                                                na.rm = T)
         '''

 Lastly, we rename the columns to reflect that the values are mean averages.
 
 Column Name                             Column Number           Source
        
        Activity Number                         1                       y_test/train
        Activity Name                           2                       activity_labels assigned based on Activity Number
        Subject Number                          3                       subjects_test/train
        Means of 561 feature columns            4 - 564                 x_test/train (See Appendix)
        Means of Body Acceleration x-Axis       565 - 692               body_acc_x_test/train
        Means of Body Acceleration y-Axis       693 - 820               body_acc_y_test/train
        Means of Body Acceleration z-Axis       821 - 948               body_acc_z_test/train
        Means of Body Gyroscopic x-Axis         949 - 1076              body_gyro_x_test/train
        Means of Body Gyroscopic y-Axis         1077 - 1204             body_gyro_y_test/train
        Means of Body Gyroscopic z-Axis         1205 - 1332             body_gyro_z_test/train
        Means of Total Acceleration x-Axis      1333 - 1460             total_acc_x_test/train
        Means of Total Acceleration y-Axis      1461 - 1588             total_acc_y_test/train
        Means of Total Acceleration z-Axis      1589 - 1716             total_acc_z_test/train
        
        The row counts are as follows: 30 subjects and six actvities produce rows for 180 unique combinations
        of activities and subjects.
        
        The total dimensions of the second independent tidy data set of mean variables by activity and subject
        are 180 rows and 1,716 columns.

 This data structure is in second_independent_tidy_data_set in run_analsyis.R, and run_analysis.R writes second_independent_tidy_data_set.txt to disc.
 
Appendix
========

Feature Names Vernacular Translation 
------------------------------------

             Column Names Provided                       Vernacular Names                                                                     
              1 tBodyAcc-mean()-X                    Time_Domain_Body_Acceleration_Mean_X                                            
        	  2 tBodyAcc-mean()-Y                    Time_Domain_Body_Acceleration_Mean_Y                                            
        	  3 tBodyAcc-mean()-Z                    Time_Domain_Body_Acceleration_Mean_Z                                            
        	  4 tBodyAcc-std()-X                     Time_Domain_Body_Acceleration_Standard_Deviation_X                              
        	  5 tBodyAcc-std()-Y                     Time_Domain_Body_Acceleration_Standard_Deviation_Y                              
        	  6 tBodyAcc-std()-Z                     Time_Domain_Body_Acceleration_Standard_Deviation_Z                              
        	  7 tBodyAcc-mad()-X                     Time_Domain_Body_Acceleration_Mean_Absolute_Deviation_X                         
        	  8 tBodyAcc-mad()-Y                     Time_Domain_Body_Acceleration_Mean_Absolute_Deviation_Y                         
        	  9 tBodyAcc-mad()-Z                     Time_Domain_Body_Acceleration_Mean_Absolute_Deviation_Z                         
        	 10 tBodyAcc-max()-X                     Time_Domain_Body_Acceleration_Maximum_X                                         
        	 11 tBodyAcc-max()-Y                     Time_Domain_Body_Acceleration_Maximum_Y                                         
        	 12 tBodyAcc-max()-Z                     Time_Domain_Body_Acceleration_Maximum_Z                                         
        	 13 tBodyAcc-min()-X                     Time_Domain_Body_Acceleration_Minimum_X                                         
        	 14 tBodyAcc-min()-Y                     Time_Domain_Body_Acceleration_Minimum_Y                                         
        	 15 tBodyAcc-min()-Z                     Time_Domain_Body_Acceleration_Minimum_Z                                         
        	 16 tBodyAcc-sma()                       Time_Domain_Body_Acceleration_Signal_Magnitude_Area                             
        	 17 tBodyAcc-energy()-X                  Time_Domain_Body_Acceleration_Energy_X                                          
        	 18 tBodyAcc-energy()-Y                  Time_Domain_Body_Acceleration_Energy_Y                                          
        	 19 tBodyAcc-energy()-Z                  Time_Domain_Body_Acceleration_Energy_Z                                          
        	 20 tBodyAcc-iqr()-X                     Time_Domain_Body_Acceleration_Interquartile_Range_X                             
        	 21 tBodyAcc-iqr()-Y                     Time_Domain_Body_Acceleration_Interquartile_Range_Y                             
        	 22 tBodyAcc-iqr()-Z                     Time_Domain_Body_Acceleration_Interquartile_Range_Z                             
        	 23 tBodyAcc-entropy()-X                 Time_Domain_Body_Acceleration_Entropy_X                                         
        	 24 tBodyAcc-entropy()-Y                 Time_Domain_Body_Acceleration_Entropy_Y                                         
        	 25 tBodyAcc-entropy()-Z                 Time_Domain_Body_Acceleration_Entropy_Z                                         
        	 26 tBodyAcc-arCoeff()-X,1               Time_Domain_Body_Acceleration_Autoregression_Coefficient_X_1                    
        	 27 tBodyAcc-arCoeff()-X,2               Time_Domain_Body_Acceleration_Autoregression_Coefficient_X_2                    
        	 28 tBodyAcc-arCoeff()-X,3               Time_Domain_Body_Acceleration_Autoregression_Coefficient_X_3                    
        	 29 tBodyAcc-arCoeff()-X,4               Time_Domain_Body_Acceleration_Autoregression_Coefficient_X_4                    
        	 30 tBodyAcc-arCoeff()-Y,1               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Y_1                    
        	 31 tBodyAcc-arCoeff()-Y,2               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Y_2                    
        	 32 tBodyAcc-arCoeff()-Y,3               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Y_3                    
        	 33 tBodyAcc-arCoeff()-Y,4               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Y_4                    
        	 34 tBodyAcc-arCoeff()-Z,1               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Z_1                    
        	 35 tBodyAcc-arCoeff()-Z,2               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Z_2                    
        	 36 tBodyAcc-arCoeff()-Z,3               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Z_3                    
        	 37 tBodyAcc-arCoeff()-Z,4               Time_Domain_Body_Acceleration_Autoregression_Coefficient_Z_4                    
        	 38 tBodyAcc-correlation()-X,Y           Time_Domain_Body_Acceleration_Correlation_X_Y                                   
        	 39 tBodyAcc-correlation()-X,Z           Time_Domain_Body_Acceleration_Correlation_X_Z                                   
        	 40 tBodyAcc-correlation()-Y,Z           Time_Domain_Body_Acceleration_Correlation_Y_Z                                   
        	 41 tGravityAcc-mean()-X                 Time_Domain_Gravity_Acceleration_Mean_X                                         
        	 42 tGravityAcc-mean()-Y                 Time_Domain_Gravity_Acceleration_Mean_Y                                         
        	 43 tGravityAcc-mean()-Z                 Time_Domain_Gravity_Acceleration_Mean_Z                                         
        	 44 tGravityAcc-std()-X                  Time_Domain_Gravity_Acceleration_Standard_Deviation_X                           
        	 45 tGravityAcc-std()-Y                  Time_Domain_Gravity_Acceleration_Standard_Deviation_Y                           
        	 46 tGravityAcc-std()-Z                  Time_Domain_Gravity_Acceleration_Standard_Deviation_Z                           
        	 47 tGravityAcc-mad()-X                  Time_Domain_Gravity_Acceleration_Mean_Absolute_Deviation_X                      
        	 48 tGravityAcc-mad()-Y                  Time_Domain_Gravity_Acceleration_Mean_Absolute_Deviation_Y                      
        	 49 tGravityAcc-mad()-Z                  Time_Domain_Gravity_Acceleration_Mean_Absolute_Deviation_Z                      
        	 50 tGravityAcc-max()-X                  Time_Domain_Gravity_Acceleration_Maximum_X                                      
        	 51 tGravityAcc-max()-Y                  Time_Domain_Gravity_Acceleration_Maximum_Y                                      
        	 52 tGravityAcc-max()-Z                  Time_Domain_Gravity_Acceleration_Maximum_Z                                      
        	 53 tGravityAcc-min()-X                  Time_Domain_Gravity_Acceleration_Minimum_X                                      
        	 54 tGravityAcc-min()-Y                  Time_Domain_Gravity_Acceleration_Minimum_Y                                      
        	 55 tGravityAcc-min()-Z                  Time_Domain_Gravity_Acceleration_Minimum_Z                                      
        	 56 tGravityAcc-sma()                    Time_Domain_Gravity_Acceleration_Signal_Magnitude_Area                          
        	 57 tGravityAcc-energy()-X               Time_Domain_Gravity_Acceleration_Energy_X                                       
        	 58 tGravityAcc-energy()-Y               Time_Domain_Gravity_Acceleration_Energy_Y                                       
        	 59 tGravityAcc-energy()-Z               Time_Domain_Gravity_Acceleration_Energy_Z                                       
        	 60 tGravityAcc-iqr()-X                  Time_Domain_Gravity_Acceleration_Interquartile_Range_X                          
        	 61 tGravityAcc-iqr()-Y                  Time_Domain_Gravity_Acceleration_Interquartile_Range_Y                          
        	 62 tGravityAcc-iqr()-Z                  Time_Domain_Gravity_Acceleration_Interquartile_Range_Z                          
        	 63 tGravityAcc-entropy()-X              Time_Domain_Gravity_Acceleration_Entropy_X                                      
        	 64 tGravityAcc-entropy()-Y              Time_Domain_Gravity_Acceleration_Entropy_Y                                      
        	 65 tGravityAcc-entropy()-Z              Time_Domain_Gravity_Acceleration_Entropy_Z                                      
        	 66 tGravityAcc-arCoeff()-X,1            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_X_1                 
        	 67 tGravityAcc-arCoeff()-X,2            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_X_2                 
        	 68 tGravityAcc-arCoeff()-X,3            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_X_3                 
        	 69 tGravityAcc-arCoeff()-X,4            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_X_4                 
        	 70 tGravityAcc-arCoeff()-Y,1            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Y_1                 
        	 71 tGravityAcc-arCoeff()-Y,2            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Y_2                 
        	 72 tGravityAcc-arCoeff()-Y,3            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Y_3                 
        	 73 tGravityAcc-arCoeff()-Y,4            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Y_4                 
        	 74 tGravityAcc-arCoeff()-Z,1            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Z_1                 
        	 75 tGravityAcc-arCoeff()-Z,2            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Z_2                 
        	 76 tGravityAcc-arCoeff()-Z,3            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Z_3                 
        	 77 tGravityAcc-arCoeff()-Z,4            Time_Domain_Gravity_Acceleration_Autoregression_Coefficient_Z_4                 
        	 78 tGravityAcc-correlation()-X,Y        Time_Domain_Gravity_Acceleration_Correlation_X_Y                                
        	 79 tGravityAcc-correlation()-X,Z        Time_Domain_Gravity_Acceleration_Correlation_X_Z                                
        	 80 tGravityAcc-correlation()-Y,Z        Time_Domain_Gravity_Acceleration_Correlation_Y_Z                                
        	 81 tBodyAccJerk-mean()-X                Time_Domain_Body_Acceleration_Jerk_Mean_X                                       
        	 82 tBodyAccJerk-mean()-Y                Time_Domain_Body_Acceleration_Jerk_Mean_Y                                       
        	 83 tBodyAccJerk-mean()-Z                Time_Domain_Body_Acceleration_Jerk_Mean_Z                                       
        	 84 tBodyAccJerk-std()-X                 Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_X                         
        	 85 tBodyAccJerk-std()-Y                 Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_Y                         
        	 86 tBodyAccJerk-std()-Z                 Time_Domain_Body_Acceleration_Jerk_Standard_Deviation_Z                         
        	 87 tBodyAccJerk-mad()-X                 Time_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_X                    
        	 88 tBodyAccJerk-mad()-Y                 Time_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_Y                    
        	 89 tBodyAccJerk-mad()-Z                 Time_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_Z                    
        	 90 tBodyAccJerk-max()-X                 Time_Domain_Body_Acceleration_Jerk_Maximum_X                                    
        	 91 tBodyAccJerk-max()-Y                 Time_Domain_Body_Acceleration_Jerk_Maximum_Y                                    
        	 92 tBodyAccJerk-max()-Z                 Time_Domain_Body_Acceleration_Jerk_Maximum_Z                                    
        	 93 tBodyAccJerk-min()-X                 Time_Domain_Body_Acceleration_Jerk_Minimum_X                                    
        	 94 tBodyAccJerk-min()-Y                 Time_Domain_Body_Acceleration_Jerk_Minimum_Y                                    
        	 95 tBodyAccJerk-min()-Z                 Time_Domain_Body_Acceleration_Jerk_Minimum_Z                                    
        	 96 tBodyAccJerk-sma()                   Time_Domain_Body_Acceleration_Jerk_Signal_Magnitude_Area                        
        	 97 tBodyAccJerk-energy()-X              Time_Domain_Body_Acceleration_Jerk_Energy_X                                     
        	 98 tBodyAccJerk-energy()-Y              Time_Domain_Body_Acceleration_Jerk_Energy_Y                                     
        	 99 tBodyAccJerk-energy()-Z              Time_Domain_Body_Acceleration_Jerk_Energy_Z                                     
        	100 tBodyAccJerk-iqr()-X                 Time_Domain_Body_Acceleration_Jerk_Interquartile_Range_X                        
        	101 tBodyAccJerk-iqr()-Y                 Time_Domain_Body_Acceleration_Jerk_Interquartile_Range_Y                        
        	102 tBodyAccJerk-iqr()-Z                 Time_Domain_Body_Acceleration_Jerk_Interquartile_Range_Z                        
        	103 tBodyAccJerk-entropy()-X             Time_Domain_Body_Acceleration_Jerk_Entropy_X                                    
        	104 tBodyAccJerk-entropy()-Y             Time_Domain_Body_Acceleration_Jerk_Entropy_Y                                    
        	105 tBodyAccJerk-entropy()-Z             Time_Domain_Body_Acceleration_Jerk_Entropy_Z                                    
        	106 tBodyAccJerk-arCoeff()-X,1           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_X_1               
        	107 tBodyAccJerk-arCoeff()-X,2           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_X_2               
        	108 tBodyAccJerk-arCoeff()-X,3           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_X_3               
        	109 tBodyAccJerk-arCoeff()-X,4           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_X_4               
        	110 tBodyAccJerk-arCoeff()-Y,1           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Y_1               
        	111 tBodyAccJerk-arCoeff()-Y,2           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Y_2               
        	112 tBodyAccJerk-arCoeff()-Y,3           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Y_3               
        	113 tBodyAccJerk-arCoeff()-Y,4           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Y_4               
        	114 tBodyAccJerk-arCoeff()-Z,1           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Z_1               
        	115 tBodyAccJerk-arCoeff()-Z,2           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Z_2               
        	116 tBodyAccJerk-arCoeff()-Z,3           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Z_3               
        	117 tBodyAccJerk-arCoeff()-Z,4           Time_Domain_Body_Acceleration_Jerk_Autoregression_Coefficient_Z_4               
        	118 tBodyAccJerk-correlation()-X,Y       Time_Domain_Body_Acceleration_Jerk_Correlation_X_Y                              
        	119 tBodyAccJerk-correlation()-X,Z       Time_Domain_Body_Acceleration_Jerk_Correlation_X_Z                              
        	120 tBodyAccJerk-correlation()-Y,Z       Time_Domain_Body_Acceleration_Jerk_Correlation_Y_Z                              
        	121 tBodyGyro-mean()-X                   Time_Domain_Body_Gyroscopic_Mean_X                                              
        	122 tBodyGyro-mean()-Y                   Time_Domain_Body_Gyroscopic_Mean_Y                                              
        	123 tBodyGyro-mean()-Z                   Time_Domain_Body_Gyroscopic_Mean_Z                                              
        	124 tBodyGyro-std()-X                    Time_Domain_Body_Gyroscopic_Standard_Deviation_X                                
        	125 tBodyGyro-std()-Y                    Time_Domain_Body_Gyroscopic_Standard_Deviation_Y                                
        	126 tBodyGyro-std()-Z                    Time_Domain_Body_Gyroscopic_Standard_Deviation_Z                                
        	127 tBodyGyro-mad()-X                    Time_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_X                           
        	128 tBodyGyro-mad()-Y                    Time_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_Y                           
        	129 tBodyGyro-mad()-Z                    Time_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_Z                           
        	130 tBodyGyro-max()-X                    Time_Domain_Body_Gyroscopic_Maximum_X                                           
        	131 tBodyGyro-max()-Y                    Time_Domain_Body_Gyroscopic_Maximum_Y                                           
        	132 tBodyGyro-max()-Z                    Time_Domain_Body_Gyroscopic_Maximum_Z                                           
        	133 tBodyGyro-min()-X                    Time_Domain_Body_Gyroscopic_Minimum_X                                           
        	134 tBodyGyro-min()-Y                    Time_Domain_Body_Gyroscopic_Minimum_Y                                           
        	135 tBodyGyro-min()-Z                    Time_Domain_Body_Gyroscopic_Minimum_Z                                           
        	136 tBodyGyro-sma()                      Time_Domain_Body_Gyroscopic_Signal_Magnitude_Area                               
        	137 tBodyGyro-energy()-X                 Time_Domain_Body_Gyroscopic_Energy_X                                            
        	138 tBodyGyro-energy()-Y                 Time_Domain_Body_Gyroscopic_Energy_Y                                            
        	139 tBodyGyro-energy()-Z                 Time_Domain_Body_Gyroscopic_Energy_Z                                            
        	140 tBodyGyro-iqr()-X                    Time_Domain_Body_Gyroscopic_Interquartile_Range_X                               
        	141 tBodyGyro-iqr()-Y                    Time_Domain_Body_Gyroscopic_Interquartile_Range_Y                               
        	142 tBodyGyro-iqr()-Z                    Time_Domain_Body_Gyroscopic_Interquartile_Range_Z                               
        	143 tBodyGyro-entropy()-X                Time_Domain_Body_Gyroscopic_Entropy_X                                           
        	144 tBodyGyro-entropy()-Y                Time_Domain_Body_Gyroscopic_Entropy_Y                                           
        	145 tBodyGyro-entropy()-Z                Time_Domain_Body_Gyroscopic_Entropy_Z                                           
        	146 tBodyGyro-arCoeff()-X,1              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_X_1                      
        	147 tBodyGyro-arCoeff()-X,2              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_X_2                      
        	148 tBodyGyro-arCoeff()-X,3              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_X_3                      
        	149 tBodyGyro-arCoeff()-X,4              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_X_4                      
        	150 tBodyGyro-arCoeff()-Y,1              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Y_1                      
        	151 tBodyGyro-arCoeff()-Y,2              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Y_2                      
        	152 tBodyGyro-arCoeff()-Y,3              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Y_3                      
        	153 tBodyGyro-arCoeff()-Y,4              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Y_4                      
        	154 tBodyGyro-arCoeff()-Z,1              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Z_1                      
        	155 tBodyGyro-arCoeff()-Z,2              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Z_2                      
        	156 tBodyGyro-arCoeff()-Z,3              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Z_3                      
        	157 tBodyGyro-arCoeff()-Z,4              Time_Domain_Body_Gyroscopic_Autoregression_Coefficient_Z_4                      
        	158 tBodyGyro-correlation()-X,Y          Time_Domain_Body_Gyroscopic_Correlation_X_Y                                     
        	159 tBodyGyro-correlation()-X,Z          Time_Domain_Body_Gyroscopic_Correlation_X_Z                                     
        	160 tBodyGyro-correlation()-Y,Z          Time_Domain_Body_Gyroscopic_Correlation_Y_Z                                     
        	161 tBodyGyroJerk-mean()-X               Time_Domain_Body_Gyroscopic_Jerk_Mean_X                                         
        	162 tBodyGyroJerk-mean()-Y               Time_Domain_Body_Gyroscopic_Jerk_Mean_Y                                         
        	163 tBodyGyroJerk-mean()-Z               Time_Domain_Body_Gyroscopic_Jerk_Mean_Z                                         
        	164 tBodyGyroJerk-std()-X                Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_X                           
        	165 tBodyGyroJerk-std()-Y                Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_Y                           
        	166 tBodyGyroJerk-std()-Z                Time_Domain_Body_Gyroscopic_Jerk_Standard_Deviation_Z                           
        	167 tBodyGyroJerk-mad()-X                Time_Domain_Body_Gyroscopic_Jerk_Mean_Absolute_Deviation_X                      
        	168 tBodyGyroJerk-mad()-Y                Time_Domain_Body_Gyroscopic_Jerk_Mean_Absolute_Deviation_Y                      
        	169 tBodyGyroJerk-mad()-Z                Time_Domain_Body_Gyroscopic_Jerk_Mean_Absolute_Deviation_Z                      
        	170 tBodyGyroJerk-max()-X                Time_Domain_Body_Gyroscopic_Jerk_Maximum_X                                      
        	171 tBodyGyroJerk-max()-Y                Time_Domain_Body_Gyroscopic_Jerk_Maximum_Y                                      
        	172 tBodyGyroJerk-max()-Z                Time_Domain_Body_Gyroscopic_Jerk_Maximum_Z                                      
        	173 tBodyGyroJerk-min()-X                Time_Domain_Body_Gyroscopic_Jerk_Minimum_X                                      
        	174 tBodyGyroJerk-min()-Y                Time_Domain_Body_Gyroscopic_Jerk_Minimum_Y                                      
        	175 tBodyGyroJerk-min()-Z                Time_Domain_Body_Gyroscopic_Jerk_Minimum_Z                                      
        	176 tBodyGyroJerk-sma()                  Time_Domain_Body_Gyroscopic_Jerk_Signal_Magnitude_Area                          
        	177 tBodyGyroJerk-energy()-X             Time_Domain_Body_Gyroscopic_Jerk_Energy_X                                       
        	178 tBodyGyroJerk-energy()-Y             Time_Domain_Body_Gyroscopic_Jerk_Energy_Y                                       
        	179 tBodyGyroJerk-energy()-Z             Time_Domain_Body_Gyroscopic_Jerk_Energy_Z                                       
        	180 tBodyGyroJerk-iqr()-X                Time_Domain_Body_Gyroscopic_Jerk_Interquartile_Range_X                          
        	181 tBodyGyroJerk-iqr()-Y                Time_Domain_Body_Gyroscopic_Jerk_Interquartile_Range_Y                          
        	182 tBodyGyroJerk-iqr()-Z                Time_Domain_Body_Gyroscopic_Jerk_Interquartile_Range_Z                          
        	183 tBodyGyroJerk-entropy()-X            Time_Domain_Body_Gyroscopic_Jerk_Entropy_X                                      
        	184 tBodyGyroJerk-entropy()-Y            Time_Domain_Body_Gyroscopic_Jerk_Entropy_Y                                      
        	185 tBodyGyroJerk-entropy()-Z            Time_Domain_Body_Gyroscopic_Jerk_Entropy_Z                                      
        	186 tBodyGyroJerk-arCoeff()-X,1          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_X_1                 
        	187 tBodyGyroJerk-arCoeff()-X,2          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_X_2                 
        	188 tBodyGyroJerk-arCoeff()-X,3          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_X_3                 
        	189 tBodyGyroJerk-arCoeff()-X,4          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_X_4                 
        	190 tBodyGyroJerk-arCoeff()-Y,1          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Y_1                 
        	191 tBodyGyroJerk-arCoeff()-Y,2          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Y_2                 
        	192 tBodyGyroJerk-arCoeff()-Y,3          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Y_3                 
        	193 tBodyGyroJerk-arCoeff()-Y,4          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Y_4                 
        	194 tBodyGyroJerk-arCoeff()-Z,1          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Z_1                 
        	195 tBodyGyroJerk-arCoeff()-Z,2          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Z_2                 
        	196 tBodyGyroJerk-arCoeff()-Z,3          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Z_3                 
        	197 tBodyGyroJerk-arCoeff()-Z,4          Time_Domain_Body_Gyroscopic_Jerk_Autoregression_Coefficient_Z_4                 
        	198 tBodyGyroJerk-correlation()-X,Y      Time_Domain_Body_Gyroscopic_Jerk_Correlation_X_Y                                
        	199 tBodyGyroJerk-correlation()-X,Z      Time_Domain_Body_Gyroscopic_Jerk_Correlation_X_Z                                
        	200 tBodyGyroJerk-correlation()-Y,Z      Time_Domain_Body_Gyroscopic_Jerk_Correlation_Y_Z                                
        	201 tBodyAccMag-mean()                   Time_Domain_Body_Acceleration_Magnitude_Mean                                    
        	202 tBodyAccMag-std()                    Time_Domain_Body_Acceleration_Magnitude_Standard_Deviation                      
        	203 tBodyAccMag-mad()                    Time_Domain_Body_Acceleration_Magnitude_Mean_Absolute_Deviation                 
        	204 tBodyAccMag-max()                    Time_Domain_Body_Acceleration_Magnitude_Maximum                                 
        	205 tBodyAccMag-min()                    Time_Domain_Body_Acceleration_Magnitude_Minimum                                 
        	206 tBodyAccMag-sma()                    Time_Domain_Body_Acceleration_Magnitude_Signal_Magnitude_Area                   
        	207 tBodyAccMag-energy()                 Time_Domain_Body_Acceleration_Magnitude_Energy                                  
        	208 tBodyAccMag-iqr()                    Time_Domain_Body_Acceleration_Magnitude_Interquartile_Range                     
        	209 tBodyAccMag-entropy()                Time_Domain_Body_Acceleration_Magnitude_Entropy                                 
        	210 tBodyAccMag-arCoeff()1               Time_Domain_Body_Acceleration_Magnitude_Autoregression_Coefficient_1            
        	211 tBodyAccMag-arCoeff()2               Time_Domain_Body_Acceleration_Magnitude_Autoregression_Coefficient_2            
        	212 tBodyAccMag-arCoeff()3               Time_Domain_Body_Acceleration_Magnitude_Autoregression_Coefficient_3            
        	213 tBodyAccMag-arCoeff()4               Time_Domain_Body_Acceleration_Magnitude_Autoregression_Coefficient_4            
        	214 tGravityAccMag-mean()                Time_Domain_Gravity_Acceleration_Magnitude_Mean                                 
        	215 tGravityAccMag-std()                 Time_Domain_Gravity_Acceleration_Magnitude_Standard_Deviation                   
        	216 tGravityAccMag-mad()                 Time_Domain_Gravity_Acceleration_Magnitude_Mean_Absolute_Deviation              
        	217 tGravityAccMag-max()                 Time_Domain_Gravity_Acceleration_Magnitude_Maximum                              
        	218 tGravityAccMag-min()                 Time_Domain_Gravity_Acceleration_Magnitude_Minimum                              
        	219 tGravityAccMag-sma()                 Time_Domain_Gravity_Acceleration_Magnitude_Signal_Magnitude_Area                
        	220 tGravityAccMag-energy()              Time_Domain_Gravity_Acceleration_Magnitude_Energy                               
        	221 tGravityAccMag-iqr()                 Time_Domain_Gravity_Acceleration_Magnitude_Interquartile_Range                  
        	222 tGravityAccMag-entropy()             Time_Domain_Gravity_Acceleration_Magnitude_Entropy                              
        	223 tGravityAccMag-arCoeff()1            Time_Domain_Gravity_Acceleration_Magnitude_Autoregression_Coefficient_1         
        	224 tGravityAccMag-arCoeff()2            Time_Domain_Gravity_Acceleration_Magnitude_Autoregression_Coefficient_2         
        	225 tGravityAccMag-arCoeff()3            Time_Domain_Gravity_Acceleration_Magnitude_Autoregression_Coefficient_3         
        	226 tGravityAccMag-arCoeff()4            Time_Domain_Gravity_Acceleration_Magnitude_Autoregression_Coefficient_4         
        	227 tBodyAccJerkMag-mean()               Time_Domain_Body_Acceleration_Jerk_Magnitude_Mean                               
        	228 tBodyAccJerkMag-std()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Standard_Deviation                 
        	229 tBodyAccJerkMag-mad()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Mean_Absolute_Deviation            
        	230 tBodyAccJerkMag-max()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Maximum                            
        	231 tBodyAccJerkMag-min()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Minimum                            
        	232 tBodyAccJerkMag-sma()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Signal_Magnitude_Area              
        	233 tBodyAccJerkMag-energy()             Time_Domain_Body_Acceleration_Jerk_Magnitude_Energy                             
        	234 tBodyAccJerkMag-iqr()                Time_Domain_Body_Acceleration_Jerk_Magnitude_Interquartile_Range                
        	235 tBodyAccJerkMag-entropy()            Time_Domain_Body_Acceleration_Jerk_Magnitude_Entropy                            
        	236 tBodyAccJerkMag-arCoeff()1           Time_Domain_Body_Acceleration_Jerk_Magnitude_Autoregression_Coefficient_1       
        	237 tBodyAccJerkMag-arCoeff()2           Time_Domain_Body_Acceleration_Jerk_Magnitude_Autoregression_Coefficient_2       
        	238 tBodyAccJerkMag-arCoeff()3           Time_Domain_Body_Acceleration_Jerk_Magnitude_Autoregression_Coefficient_3       
        	239 tBodyAccJerkMag-arCoeff()4           Time_Domain_Body_Acceleration_Jerk_Magnitude_Autoregression_Coefficient_4       
        	240 tBodyGyroMag-mean()                  Time_Domain_Body_Gyroscopic_Magnitude_Mean                                      
        	241 tBodyGyroMag-std()                   Time_Domain_Body_Gyroscopic_Magnitude_Standard_Deviation                        
        	242 tBodyGyroMag-mad()                   Time_Domain_Body_Gyroscopic_Magnitude_Mean_Absolute_Deviation                   
        	243 tBodyGyroMag-max()                   Time_Domain_Body_Gyroscopic_Magnitude_Maximum                                   
        	244 tBodyGyroMag-min()                   Time_Domain_Body_Gyroscopic_Magnitude_Minimum                                   
        	245 tBodyGyroMag-sma()                   Time_Domain_Body_Gyroscopic_Magnitude_Signal_Magnitude_Area                     
        	246 tBodyGyroMag-energy()                Time_Domain_Body_Gyroscopic_Magnitude_Energy                                    
        	247 tBodyGyroMag-iqr()                   Time_Domain_Body_Gyroscopic_Magnitude_Interquartile_Range                       
        	248 tBodyGyroMag-entropy()               Time_Domain_Body_Gyroscopic_Magnitude_Entropy                                   
        	249 tBodyGyroMag-arCoeff()1              Time_Domain_Body_Gyroscopic_Magnitude_Autoregression_Coefficient_1              
        	250 tBodyGyroMag-arCoeff()2              Time_Domain_Body_Gyroscopic_Magnitude_Autoregression_Coefficient_2              
        	251 tBodyGyroMag-arCoeff()3              Time_Domain_Body_Gyroscopic_Magnitude_Autoregression_Coefficient_3              
        	252 tBodyGyroMag-arCoeff()4              Time_Domain_Body_Gyroscopic_Magnitude_Autoregression_Coefficient_4              
        	253 tBodyGyroJerkMag-mean()              Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Mean                                 
        	254 tBodyGyroJerkMag-std()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Standard_Deviation                   
        	255 tBodyGyroJerkMag-mad()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Mean_Absolute_Deviation              
        	256 tBodyGyroJerkMag-max()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Maximum                              
        	257 tBodyGyroJerkMag-min()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Minimum                              
        	258 tBodyGyroJerkMag-sma()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Signal_Magnitude_Area                
        	259 tBodyGyroJerkMag-energy()            Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Energy                               
        	260 tBodyGyroJerkMag-iqr()               Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Interquartile_Range                  
        	261 tBodyGyroJerkMag-entropy()           Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Entropy                              
        	262 tBodyGyroJerkMag-arCoeff()1          Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Autoregression_Coefficient_1         
        	263 tBodyGyroJerkMag-arCoeff()2          Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Autoregression_Coefficient_2         
        	264 tBodyGyroJerkMag-arCoeff()3          Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Autoregression_Coefficient_3         
        	265 tBodyGyroJerkMag-arCoeff()4          Time_Domain_Body_Gyroscopic_Jerk_Magnitude_Autoregression_Coefficient_4         
        	266 fBodyAcc-mean()-X                    Frequency_Domain_Body_Acceleration_Mean_X                                       
        	267 fBodyAcc-mean()-Y                    Frequency_Domain_Body_Acceleration_Mean_Y                                       
        	268 fBodyAcc-mean()-Z                    Frequency_Domain_Body_Acceleration_Mean_Z                                       
        	269 fBodyAcc-std()-X                     Frequency_Domain_Body_Acceleration_Standard_Deviation_X                         
        	270 fBodyAcc-std()-Y                     Frequency_Domain_Body_Acceleration_Standard_Deviation_Y                         
        	271 fBodyAcc-std()-Z                     Frequency_Domain_Body_Acceleration_Standard_Deviation_Z                         
        	272 fBodyAcc-mad()-X                     Frequency_Domain_Body_Acceleration_Mean_Absolute_Deviation_X                    
        	273 fBodyAcc-mad()-Y                     Frequency_Domain_Body_Acceleration_Mean_Absolute_Deviation_Y                    
        	274 fBodyAcc-mad()-Z                     Frequency_Domain_Body_Acceleration_Mean_Absolute_Deviation_Z                    
        	275 fBodyAcc-max()-X                     Frequency_Domain_Body_Acceleration_Maximum_X                                    
        	276 fBodyAcc-max()-Y                     Frequency_Domain_Body_Acceleration_Maximum_Y                                    
        	277 fBodyAcc-max()-Z                     Frequency_Domain_Body_Acceleration_Maximum_Z                                    
        	278 fBodyAcc-min()-X                     Frequency_Domain_Body_Acceleration_Minimum_X                                    
        	279 fBodyAcc-min()-Y                     Frequency_Domain_Body_Acceleration_Minimum_Y                                    
        	280 fBodyAcc-min()-Z                     Frequency_Domain_Body_Acceleration_Minimum_Z                                    
        	281 fBodyAcc-sma()                       Frequency_Domain_Body_Acceleration_Signal_Magnitude_Area                        
        	282 fBodyAcc-energy()-X                  Frequency_Domain_Body_Acceleration_Energy_X                                     
        	283 fBodyAcc-energy()-Y                  Frequency_Domain_Body_Acceleration_Energy_Y                                     
        	284 fBodyAcc-energy()-Z                  Frequency_Domain_Body_Acceleration_Energy_Z                                     
        	285 fBodyAcc-iqr()-X                     Frequency_Domain_Body_Acceleration_Interquartile_Range_X                        
        	286 fBodyAcc-iqr()-Y                     Frequency_Domain_Body_Acceleration_Interquartile_Range_Y                        
        	287 fBodyAcc-iqr()-Z                     Frequency_Domain_Body_Acceleration_Interquartile_Range_Z                        
        	288 fBodyAcc-entropy()-X                 Frequency_Domain_Body_Acceleration_Entropy_X                                    
        	289 fBodyAcc-entropy()-Y                 Frequency_Domain_Body_Acceleration_Entropy_Y                                    
        	290 fBodyAcc-entropy()-Z                 Frequency_Domain_Body_Acceleration_Entropy_Z                                    
        	291 fBodyAcc-maxInds-X                   Frequency_Domain_Body_Acceleration_Maximum_Inds_X                               
        	292 fBodyAcc-maxInds-Y                   Frequency_Domain_Body_Acceleration_Maximum_Inds_Y                               
        	293 fBodyAcc-maxInds-Z                   Frequency_Domain_Body_Acceleration_Maximum_Inds_Z                               
        	294 fBodyAcc-meanFreq()-X                Frequency_Domain_Body_Acceleration_Mean_Freq_X                                  
        	295 fBodyAcc-meanFreq()-Y                Frequency_Domain_Body_Acceleration_Mean_Freq_Y                                  
        	296 fBodyAcc-meanFreq()-Z                Frequency_Domain_Body_Acceleration_Mean_Freq_Z                                  
        	297 fBodyAcc-skewness()-X                Frequency_Domain_Body_Acceleration_Skewness_X                                   
        	298 fBodyAcc-kurtosis()-X                Frequency_Domain_Body_Acceleration_Kurtosis_X                                   
        	299 fBodyAcc-skewness()-Y                Frequency_Domain_Body_Acceleration_Skewness_Y                                   
        	300 fBodyAcc-kurtosis()-Y                Frequency_Domain_Body_Acceleration_Kurtosis_Y                                   
        	301 fBodyAcc-skewness()-Z                Frequency_Domain_Body_Acceleration_Skewness_Z                                   
        	302 fBodyAcc-kurtosis()-Z                Frequency_Domain_Body_Acceleration_Kurtosis_Z                                   
        	303 fBodyAcc-bandsEnergy()-1,8           Frequency_Domain_Body_Acceleration_bandsEnergy_1_8                               
        	304 fBodyAcc-bandsEnergy()-9,16          Frequency_Domain_Body_Acceleration_bandsEnergy_9_16                              
        	305 fBodyAcc-bandsEnergy()-17,24         Frequency_Domain_Body_Acceleration_bandsEnergy_17_24                             
        	306 fBodyAcc-bandsEnergy()-25,32         Frequency_Domain_Body_Acceleration_bandsEnergy_25_32                             
        	307 fBodyAcc-bandsEnergy()-33,40         Frequency_Domain_Body_Acceleration_bandsEnergy_33_40                             
        	308 fBodyAcc-bandsEnergy()-41,48         Frequency_Domain_Body_Acceleration_bandsEnergy_41_48                             
        	309 fBodyAcc-bandsEnergy()-49,56         Frequency_Domain_Body_Acceleration_bandsEnergy_49_56                             
        	310 fBodyAcc-bandsEnergy()-57,64         Frequency_Domain_Body_Acceleration_bandsEnergy_57_64                             
        	311 fBodyAcc-bandsEnergy()-1,16          Frequency_Domain_Body_Acceleration_bandsEnergy_1_16                              
        	312 fBodyAcc-bandsEnergy()-17,32         Frequency_Domain_Body_Acceleration_bandsEnergy_17_32                             
        	313 fBodyAcc-bandsEnergy()-33,48         Frequency_Domain_Body_Acceleration_bandsEnergy_33_48                             
        	314 fBodyAcc-bandsEnergy()-49,64         Frequency_Domain_Body_Acceleration_bandsEnergy_49_64                             
        	315 fBodyAcc-bandsEnergy()-1,24          Frequency_Domain_Body_Acceleration_bandsEnergy_1_24                              
        	316 fBodyAcc-bandsEnergy()-25,48         Frequency_Domain_Body_Acceleration_bandsEnergy_25_48                             
        	317 fBodyAcc-bandsEnergy()-1,8           Frequency_Domain_Body_Acceleration_bandsEnergy_1_8                               
        	318 fBodyAcc-bandsEnergy()-9,16          Frequency_Domain_Body_Acceleration_bandsEnergy_9_16                              
        	319 fBodyAcc-bandsEnergy()-17,24         Frequency_Domain_Body_Acceleration_bandsEnergy_17_24                             
        	320 fBodyAcc-bandsEnergy()-25,32         Frequency_Domain_Body_Acceleration_bandsEnergy_25_32                             
        	321 fBodyAcc-bandsEnergy()-33,40         Frequency_Domain_Body_Acceleration_bandsEnergy_33_40                             
        	322 fBodyAcc-bandsEnergy()-41,48         Frequency_Domain_Body_Acceleration_bandsEnergy_41_48                             
        	323 fBodyAcc-bandsEnergy()-49,56         Frequency_Domain_Body_Acceleration_bandsEnergy_49_56                             
        	324 fBodyAcc-bandsEnergy()-57,64         Frequency_Domain_Body_Acceleration_bandsEnergy_57_64                             
        	325 fBodyAcc-bandsEnergy()-1,16          Frequency_Domain_Body_Acceleration_bandsEnergy_1_16                              
        	326 fBodyAcc-bandsEnergy()-17,32         Frequency_Domain_Body_Acceleration_bandsEnergy_17_32                             
        	327 fBodyAcc-bandsEnergy()-33,48         Frequency_Domain_Body_Acceleration_bandsEnergy_33_48                             
        	328 fBodyAcc-bandsEnergy()-49,64         Frequency_Domain_Body_Acceleration_bandsEnergy_49_64                             
        	329 fBodyAcc-bandsEnergy()-1,24          Frequency_Domain_Body_Acceleration_bandsEnergy_1_24                              
        	330 fBodyAcc-bandsEnergy()-25,48         Frequency_Domain_Body_Acceleration_bandsEnergy_25_48                             
        	331 fBodyAcc-bandsEnergy()-1,8           Frequency_Domain_Body_Acceleration_bandsEnergy_1_8                               
        	332 fBodyAcc-bandsEnergy()-9,16          Frequency_Domain_Body_Acceleration_bandsEnergy_9_16                              
        	333 fBodyAcc-bandsEnergy()-17,24         Frequency_Domain_Body_Acceleration_bandsEnergy_17_24                             
        	334 fBodyAcc-bandsEnergy()-25,32         Frequency_Domain_Body_Acceleration_bandsEnergy_25_32                             
        	335 fBodyAcc-bandsEnergy()-33,40         Frequency_Domain_Body_Acceleration_bandsEnergy_33_40                             
        	336 fBodyAcc-bandsEnergy()-41,48         Frequency_Domain_Body_Acceleration_bandsEnergy_41_48                             
        	337 fBodyAcc-bandsEnergy()-49,56         Frequency_Domain_Body_Acceleration_bandsEnergy_49_56                             
        	338 fBodyAcc-bandsEnergy()-57,64         Frequency_Domain_Body_Acceleration_bandsEnergy_57_64                             
        	339 fBodyAcc-bandsEnergy()-1,16          Frequency_Domain_Body_Acceleration_bandsEnergy_1_16                              
        	340 fBodyAcc-bandsEnergy()-17,32         Frequency_Domain_Body_Acceleration_bandsEnergy_17_32                             
        	341 fBodyAcc-bandsEnergy()-33,48         Frequency_Domain_Body_Acceleration_bandsEnergy_33_48                             
        	342 fBodyAcc-bandsEnergy()-49,64         Frequency_Domain_Body_Acceleration_bandsEnergy_49_64                             
        	343 fBodyAcc-bandsEnergy()-1,24          Frequency_Domain_Body_Acceleration_bandsEnergy_1_24                              
        	344 fBodyAcc-bandsEnergy()-25,48         Frequency_Domain_Body_Acceleration_bandsEnergy_25_48                             
        	345 fBodyAccJerk-mean()-X                Frequency_Domain_Body_Acceleration_Jerk_Mean_X                                  
        	346 fBodyAccJerk-mean()-Y                Frequency_Domain_Body_Acceleration_Jerk_Mean_Y                                  
        	347 fBodyAccJerk-mean()-Z                Frequency_Domain_Body_Acceleration_Jerk_Mean_Z                                  
        	348 fBodyAccJerk-std()-X                 Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_X                    
        	349 fBodyAccJerk-std()-Y                 Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_Y                    
        	350 fBodyAccJerk-std()-Z                 Frequency_Domain_Body_Acceleration_Jerk_Standard_Deviation_Z                    
        	351 fBodyAccJerk-mad()-X                 Frequency_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_X               
        	352 fBodyAccJerk-mad()-Y                 Frequency_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_Y               
        	353 fBodyAccJerk-mad()-Z                 Frequency_Domain_Body_Acceleration_Jerk_Mean_Absolute_Deviation_Z               
        	354 fBodyAccJerk-max()-X                 Frequency_Domain_Body_Acceleration_Jerk_Maximum_X                               
        	355 fBodyAccJerk-max()-Y                 Frequency_Domain_Body_Acceleration_Jerk_Maximum_Y                               
        	356 fBodyAccJerk-max()-Z                 Frequency_Domain_Body_Acceleration_Jerk_Maximum_Z                               
        	357 fBodyAccJerk-min()-X                 Frequency_Domain_Body_Acceleration_Jerk_Minimum_X                               
        	358 fBodyAccJerk-min()-Y                 Frequency_Domain_Body_Acceleration_Jerk_Minimum_Y                               
        	359 fBodyAccJerk-min()-Z                 Frequency_Domain_Body_Acceleration_Jerk_Minimum_Z                               
        	360 fBodyAccJerk-sma()                   Frequency_Domain_Body_Acceleration_Jerk_Signal_Magnitude_Area                   
        	361 fBodyAccJerk-energy()-X              Frequency_Domain_Body_Acceleration_Jerk_Energy_X                                
        	362 fBodyAccJerk-energy()-Y              Frequency_Domain_Body_Acceleration_Jerk_Energy_Y                                
        	363 fBodyAccJerk-energy()-Z              Frequency_Domain_Body_Acceleration_Jerk_Energy_Z                                
        	364 fBodyAccJerk-iqr()-X                 Frequency_Domain_Body_Acceleration_Jerk_Interquartile_Range_X                   
        	365 fBodyAccJerk-iqr()-Y                 Frequency_Domain_Body_Acceleration_Jerk_Interquartile_Range_Y                   
        	366 fBodyAccJerk-iqr()-Z                 Frequency_Domain_Body_Acceleration_Jerk_Interquartile_Range_Z                   
        	367 fBodyAccJerk-entropy()-X             Frequency_Domain_Body_Acceleration_Jerk_Entropy_X                               
        	368 fBodyAccJerk-entropy()-Y             Frequency_Domain_Body_Acceleration_Jerk_Entropy_Y                               
        	369 fBodyAccJerk-entropy()-Z             Frequency_Domain_Body_Acceleration_Jerk_Entropy_Z                               
        	370 fBodyAccJerk-maxInds-X               Frequency_Domain_Body_Acceleration_Jerk_Maximum_Inds_X                          
        	371 fBodyAccJerk-maxInds-Y               Frequency_Domain_Body_Acceleration_Jerk_Maximum_Inds_Y                          
        	372 fBodyAccJerk-maxInds-Z               Frequency_Domain_Body_Acceleration_Jerk_Maximum_Inds_Z                          
        	373 fBodyAccJerk-meanFreq()-X            Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_X                             
        	374 fBodyAccJerk-meanFreq()-Y            Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_Y                             
        	375 fBodyAccJerk-meanFreq()-Z            Frequency_Domain_Body_Acceleration_Jerk_Mean_Freq_Z                             
        	376 fBodyAccJerk-skewness()-X            Frequency_Domain_Body_Acceleration_Jerk_Skewness_X                              
        	377 fBodyAccJerk-kurtosis()-X            Frequency_Domain_Body_Acceleration_Jerk_Kurtosis_X                              
        	378 fBodyAccJerk-skewness()-Y            Frequency_Domain_Body_Acceleration_Jerk_Skewness_Y                              
        	379 fBodyAccJerk-kurtosis()-Y            Frequency_Domain_Body_Acceleration_Jerk_Kurtosis_Y                              
        	380 fBodyAccJerk-skewness()-Z            Frequency_Domain_Body_Acceleration_Jerk_Skewness_Z                              
        	381 fBodyAccJerk-kurtosis()-Z            Frequency_Domain_Body_Acceleration_Jerk_Kurtosis_Z                              
        	382 fBodyAccJerk-bandsEnergy()-1,8       Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_8                          
        	383 fBodyAccJerk-bandsEnergy()-9,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_9_16                         
        	384 fBodyAccJerk-bandsEnergy()-17,24     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_24                        
        	385 fBodyAccJerk-bandsEnergy()-25,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_32                        
        	386 fBodyAccJerk-bandsEnergy()-33,40     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_40                        
        	387 fBodyAccJerk-bandsEnergy()-41,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_41_48                        
        	388 fBodyAccJerk-bandsEnergy()-49,56     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_56                        
        	389 fBodyAccJerk-bandsEnergy()-57,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_57_64                        
        	390 fBodyAccJerk-bandsEnergy()-1,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_16                         
        	391 fBodyAccJerk-bandsEnergy()-17,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_32                        
        	392 fBodyAccJerk-bandsEnergy()-33,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_48                        
        	393 fBodyAccJerk-bandsEnergy()-49,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_64                        
        	394 fBodyAccJerk-bandsEnergy()-1,24      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_24                         
        	395 fBodyAccJerk-bandsEnergy()-25,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_48                        
        	396 fBodyAccJerk-bandsEnergy()-1,8       Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_8                          
        	397 fBodyAccJerk-bandsEnergy()-9,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_9_16                         
        	398 fBodyAccJerk-bandsEnergy()-17,24     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_24                        
        	399 fBodyAccJerk-bandsEnergy()-25,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_32                        
        	400 fBodyAccJerk-bandsEnergy()-33,40     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_40                        
        	401 fBodyAccJerk-bandsEnergy()-41,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_41_48                        
        	402 fBodyAccJerk-bandsEnergy()-49,56     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_56                        
        	403 fBodyAccJerk-bandsEnergy()-57,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_57_64                        
        	404 fBodyAccJerk-bandsEnergy()-1,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_16                         
        	405 fBodyAccJerk-bandsEnergy()-17,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_32                        
        	406 fBodyAccJerk-bandsEnergy()-33,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_48                        
        	407 fBodyAccJerk-bandsEnergy()-49,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_64                        
        	408 fBodyAccJerk-bandsEnergy()-1,24      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_24                         
        	409 fBodyAccJerk-bandsEnergy()-25,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_48                        
        	410 fBodyAccJerk-bandsEnergy()-1,8       Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_8                          
        	411 fBodyAccJerk-bandsEnergy()-9,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_9_16                         
        	412 fBodyAccJerk-bandsEnergy()-17,24     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_24                        
        	413 fBodyAccJerk-bandsEnergy()-25,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_32                        
        	414 fBodyAccJerk-bandsEnergy()-33,40     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_40                        
        	415 fBodyAccJerk-bandsEnergy()-41,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_41_48                        
        	416 fBodyAccJerk-bandsEnergy()-49,56     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_56                        
        	417 fBodyAccJerk-bandsEnergy()-57,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_57_64                        
        	418 fBodyAccJerk-bandsEnergy()-1,16      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_16                         
        	419 fBodyAccJerk-bandsEnergy()-17,32     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_17_32                        
        	420 fBodyAccJerk-bandsEnergy()-33,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_33_48                        
        	421 fBodyAccJerk-bandsEnergy()-49,64     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_49_64                        
        	422 fBodyAccJerk-bandsEnergy()-1,24      Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_1_24                         
        	423 fBodyAccJerk-bandsEnergy()-25,48     Frequency_Domain_Body_Acceleration_Jerk_bandsEnergy_25_48                        
        	424 fBodyGyro-mean()-X                   Frequency_Domain_Body_Gyroscopic_Mean_X                                         
        	425 fBodyGyro-mean()-Y                   Frequency_Domain_Body_Gyroscopic_Mean_Y                                         
        	426 fBodyGyro-mean()-Z                   Frequency_Domain_Body_Gyroscopic_Mean_Z                                         
        	427 fBodyGyro-std()-X                    Frequency_Domain_Body_Gyroscopic_Standard_Deviation_X                           
        	428 fBodyGyro-std()-Y                    Frequency_Domain_Body_Gyroscopic_Standard_Deviation_Y                           
        	429 fBodyGyro-std()-Z                    Frequency_Domain_Body_Gyroscopic_Standard_Deviation_Z                           
        	430 fBodyGyro-mad()-X                    Frequency_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_X                      
        	431 fBodyGyro-mad()-Y                    Frequency_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_Y                      
        	432 fBodyGyro-mad()-Z                    Frequency_Domain_Body_Gyroscopic_Mean_Absolute_Deviation_Z                      
        	433 fBodyGyro-max()-X                    Frequency_Domain_Body_Gyroscopic_Maximum_X                                      
        	434 fBodyGyro-max()-Y                    Frequency_Domain_Body_Gyroscopic_Maximum_Y                                      
        	435 fBodyGyro-max()-Z                    Frequency_Domain_Body_Gyroscopic_Maximum_Z                                      
        	436 fBodyGyro-min()-X                    Frequency_Domain_Body_Gyroscopic_Minimum_X                                      
        	437 fBodyGyro-min()-Y                    Frequency_Domain_Body_Gyroscopic_Minimum_Y                                      
        	438 fBodyGyro-min()-Z                    Frequency_Domain_Body_Gyroscopic_Minimum_Z                                      
        	439 fBodyGyro-sma()                      Frequency_Domain_Body_Gyroscopic_Signal_Magnitude_Area                          
        	440 fBodyGyro-energy()-X                 Frequency_Domain_Body_Gyroscopic_Energy_X                                       
        	441 fBodyGyro-energy()-Y                 Frequency_Domain_Body_Gyroscopic_Energy_Y                                       
        	442 fBodyGyro-energy()-Z                 Frequency_Domain_Body_Gyroscopic_Energy_Z                                       
        	443 fBodyGyro-iqr()-X                    Frequency_Domain_Body_Gyroscopic_Interquartile_Range_X                          
        	444 fBodyGyro-iqr()-Y                    Frequency_Domain_Body_Gyroscopic_Interquartile_Range_Y                          
        	445 fBodyGyro-iqr()-Z                    Frequency_Domain_Body_Gyroscopic_Interquartile_Range_Z                          
        	446 fBodyGyro-entropy()-X                Frequency_Domain_Body_Gyroscopic_Entropy_X                                      
        	447 fBodyGyro-entropy()-Y                Frequency_Domain_Body_Gyroscopic_Entropy_Y                                      
        	448 fBodyGyro-entropy()-Z                Frequency_Domain_Body_Gyroscopic_Entropy_Z                                      
        	449 fBodyGyro-maxInds-X                  Frequency_Domain_Body_Gyroscopic_Maximum_Inds_X                                 
        	450 fBodyGyro-maxInds-Y                  Frequency_Domain_Body_Gyroscopic_Maximum_Inds_Y                                 
        	451 fBodyGyro-maxInds-Z                  Frequency_Domain_Body_Gyroscopic_Maximum_Inds_Z                                 
        	452 fBodyGyro-meanFreq()-X               Frequency_Domain_Body_Gyroscopic_Mean_Freq_X                                    
        	453 fBodyGyro-meanFreq()-Y               Frequency_Domain_Body_Gyroscopic_Mean_Freq_Y                                    
        	454 fBodyGyro-meanFreq()-Z               Frequency_Domain_Body_Gyroscopic_Mean_Freq_Z                                    
        	455 fBodyGyro-skewness()-X               Frequency_Domain_Body_Gyroscopic_Skewness_X                                     
        	456 fBodyGyro-kurtosis()-X               Frequency_Domain_Body_Gyroscopic_Kurtosis_X                                     
        	457 fBodyGyro-skewness()-Y               Frequency_Domain_Body_Gyroscopic_Skewness_Y                                     
        	458 fBodyGyro-kurtosis()-Y               Frequency_Domain_Body_Gyroscopic_Kurtosis_Y                                     
        	459 fBodyGyro-skewness()-Z               Frequency_Domain_Body_Gyroscopic_Skewness_Z                                     
        	460 fBodyGyro-kurtosis()-Z               Frequency_Domain_Body_Gyroscopic_Kurtosis_Z                                     
        	461 fBodyGyro-bandsEnergy()-1,8          Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_8                                 
        	462 fBodyGyro-bandsEnergy()-9,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_9_16                                
        	463 fBodyGyro-bandsEnergy()-17,24        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_24                               
        	464 fBodyGyro-bandsEnergy()-25,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_32                               
        	465 fBodyGyro-bandsEnergy()-33,40        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_40                               
        	466 fBodyGyro-bandsEnergy()-41,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_41_48                               
        	467 fBodyGyro-bandsEnergy()-49,56        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_56                               
        	468 fBodyGyro-bandsEnergy()-57,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_57_64                               
        	469 fBodyGyro-bandsEnergy()-1,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_16                                
        	470 fBodyGyro-bandsEnergy()-17,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_32                               
        	471 fBodyGyro-bandsEnergy()-33,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_48                               
        	472 fBodyGyro-bandsEnergy()-49,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_64                               
        	473 fBodyGyro-bandsEnergy()-1,24         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_24                                
        	474 fBodyGyro-bandsEnergy()-25,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_48                               
        	475 fBodyGyro-bandsEnergy()-1,8          Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_8                                 
        	476 fBodyGyro-bandsEnergy()-9,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_9_16                                
        	477 fBodyGyro-bandsEnergy()-17,24        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_24                               
        	478 fBodyGyro-bandsEnergy()-25,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_32                               
        	479 fBodyGyro-bandsEnergy()-33,40        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_40                               
        	480 fBodyGyro-bandsEnergy()-41,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_41_48                               
        	481 fBodyGyro-bandsEnergy()-49,56        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_56                               
        	482 fBodyGyro-bandsEnergy()-57,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_57_64                               
        	483 fBodyGyro-bandsEnergy()-1,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_16                                
        	484 fBodyGyro-bandsEnergy()-17,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_32                               
        	485 fBodyGyro-bandsEnergy()-33,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_48                               
        	486 fBodyGyro-bandsEnergy()-49,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_64                               
        	487 fBodyGyro-bandsEnergy()-1,24         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_24                                
        	488 fBodyGyro-bandsEnergy()-25,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_48                               
        	489 fBodyGyro-bandsEnergy()-1,8          Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_8                                 
        	490 fBodyGyro-bandsEnergy()-9,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_9_16                                
        	491 fBodyGyro-bandsEnergy()-17,24        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_24                               
        	492 fBodyGyro-bandsEnergy()-25,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_32                               
        	493 fBodyGyro-bandsEnergy()-33,40        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_40                               
        	494 fBodyGyro-bandsEnergy()-41,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_41_48                               
        	495 fBodyGyro-bandsEnergy()-49,56        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_56                               
        	496 fBodyGyro-bandsEnergy()-57,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_57_64                               
        	497 fBodyGyro-bandsEnergy()-1,16         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_16                                
        	498 fBodyGyro-bandsEnergy()-17,32        Frequency_Domain_Body_Gyroscopic_bandsEnergy_17_32                               
        	499 fBodyGyro-bandsEnergy()-33,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_33_48                               
        	500 fBodyGyro-bandsEnergy()-49,64        Frequency_Domain_Body_Gyroscopic_bandsEnergy_49_64                               
        	501 fBodyGyro-bandsEnergy()-1,24         Frequency_Domain_Body_Gyroscopic_bandsEnergy_1_24                                
        	502 fBodyGyro-bandsEnergy()-25,48        Frequency_Domain_Body_Gyroscopic_bandsEnergy_25_48                               
        	503 fBodyAccMag-mean()                   Frequency_Domain_Body_Acceleration_Magnitude_Mean                               
        	504 fBodyAccMag-std()                    Frequency_Domain_Body_Acceleration_Magnitude_Standard_Deviation                 
        	505 fBodyAccMag-mad()                    Frequency_Domain_Body_Acceleration_Magnitude_Mean_Absolute_Deviation            
        	506 fBodyAccMag-max()                    Frequency_Domain_Body_Acceleration_Magnitude_Maximum                            
        	507 fBodyAccMag-min()                    Frequency_Domain_Body_Acceleration_Magnitude_Minimum                            
        	508 fBodyAccMag-sma()                    Frequency_Domain_Body_Acceleration_Magnitude_Signal_Magnitude_Area              
        	509 fBodyAccMag-energy()                 Frequency_Domain_Body_Acceleration_Magnitude_Energy                             
        	510 fBodyAccMag-iqr()                    Frequency_Domain_Body_Acceleration_Magnitude_Interquartile_Range                
        	511 fBodyAccMag-entropy()                Frequency_Domain_Body_Acceleration_Magnitude_Entropy                            
        	512 fBodyAccMag-maxInds                  Frequency_Domain_Body_Acceleration_Magnitude_Index_of_Maximum_Frequency         
        	513 fBodyAccMag-meanFreq()               Frequency_Domain_Body_Acceleration_Magnitude_Mean_Freq                          
        	514 fBodyAccMag-skewness()               Frequency_Domain_Body_Acceleration_Magnitude_Skewness                           
        	515 fBodyAccMag-kurtosis()               Frequency_Domain_Body_Acceleration_Magnitude_Kurtosis                           
        	516 fBodyBodyAccJerkMag-mean()           Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Mean                      
        	517 fBodyBodyAccJerkMag-std()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Standard_Deviation        
        	518 fBodyBodyAccJerkMag-mad()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Mean_Absolute_Deviation   
        	519 fBodyBodyAccJerkMag-max()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Maximum                   
        	520 fBodyBodyAccJerkMag-min()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Minimum                   
        	521 fBodyBodyAccJerkMag-sma()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Signal_Magnitude_Area     
        	522 fBodyBodyAccJerkMag-energy()         Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Energy                    
        	523 fBodyBodyAccJerkMag-iqr()            Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Interquartile_Range       
        	524 fBodyBodyAccJerkMag-entropy()        Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Entropy                   
        	525 fBodyBodyAccJerkMag-maxInds          Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Index_of_Maximum_Frequency
        	526 fBodyBodyAccJerkMag-meanFreq()       Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Mean_Freq                 
        	527 fBodyBodyAccJerkMag-skewness()       Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Skewness                  
        	528 fBodyBodyAccJerkMag-kurtosis()       Frequency_Domain_BodyBody_Acceleration_Jerk_Magnitude_Kurtosis                  
        	529 fBodyBodyGyroMag-mean()              Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Mean                             
        	530 fBodyBodyGyroMag-std()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Standard_Deviation               
        	531 fBodyBodyGyroMag-mad()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Mean_Absolute_Deviation          
        	532 fBodyBodyGyroMag-max()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Maximum                          
        	533 fBodyBodyGyroMag-min()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Minimum                          
        	534 fBodyBodyGyroMag-sma()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Signal_Magnitude_Area            
        	535 fBodyBodyGyroMag-energy()            Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Energy                           
        	536 fBodyBodyGyroMag-iqr()               Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Interquartile_Range              
        	537 fBodyBodyGyroMag-entropy()           Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Entropy                          
        	538 fBodyBodyGyroMag-maxInds             Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Index_of_Maximum_Frequency       
        	539 fBodyBodyGyroMag-meanFreq()          Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Mean_Freq                        
        	540 fBodyBodyGyroMag-skewness()          Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Skewness                         
        	541 fBodyBodyGyroMag-kurtosis()          Frequency_Domain_BodyBody_Gyroscopic_Magnitude_Kurtosis                         
        	542 fBodyBodyGyroJerkMag-mean()          Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Mean                        
        	543 fBodyBodyGyroJerkMag-std()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Standard_Deviation          
        	544 fBodyBodyGyroJerkMag-mad()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Mean_Absolute_Deviation     
        	545 fBodyBodyGyroJerkMag-max()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Maximum                     
        	546 fBodyBodyGyroJerkMag-min()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Minimum                     
        	547 fBodyBodyGyroJerkMag-sma()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Signal_Magnitude_Area       
        	548 fBodyBodyGyroJerkMag-energy()        Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Energy                      
        	549 fBodyBodyGyroJerkMag-iqr()           Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Interquartile_Range         
        	550 fBodyBodyGyroJerkMag-entropy()       Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Entropy                     
        	551 fBodyBodyGyroJerkMag-maxInds         Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Index_of_Maximum_Frequency  
        	552 fBodyBodyGyroJerkMag-meanFreq()      Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Mean_Freq                   
        	553 fBodyBodyGyroJerkMag-skewness()      Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Skewness                    
        	554 fBodyBodyGyroJerkMag-kurtosis()      Frequency_Domain_BodyBody_Gyroscopic_Jerk_Magnitude_Kurtosis                    
        	555 angle(tBodyAccMean,gravity)          Angle_Between_Time_Dimension_Body_Acceleration_Mean_and_Gravity                 
        	556 angle(tBodyAccJerkMean),gravityMean) Angle_Between_Time_Dimension_Body_Acceleration_Jerk_Mean_and_Gravity_Mean       
        	557 angle(tBodyGyroMean,gravityMean)     Angle_Between_Time_Dimension_Body_Gyroscopic_Mean_and_Gravity_Mean              
        	558 angle(tBodyGyroJerkMean,gravityMean) Angle_Between_Time_Dimension_Body_Jerk_Mean_and_Gravity_Mean                    
        	559 angle(X,gravityMean)                 Angle_Between_X_Vector_and_Gravity_Mean                                         
        	560 angle(Y,gravityMean)                 Angle_Between_Y_Vector_and_Gravity_Mean                                         
        	561 angle(Z,gravityMean)                 Angle_Between_Z_Vector_and_Gravity_Mean 
