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

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

Summary of Data Merge
=====================

Our deliverable requires us to consolidate the data provided into one data set.  We do this by re-combining the data along its normal dimensions, outlined above, so that we have named activities and commensurable variable names across test and train, and so we can associate measurement data with analsyis data in the same observation, or row, of the merged data set. 

Our resulting merged data set has these characteristics:

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
        
Summary of Extract
==================

For the creation of our extract of columns containing means and standard deviations, we relied on the information in Analysis Data Summary, above, and subsetted the merged data set by selecting those measurement and analysis data columns that contained the string 'mean' or the string 'std'.

This resulted in an extract data set having the following characteristics.

        Column Name                             Column Number           Source
        Observation_Number                      1                       Serial by row
        Test_or_Train	                        2                       Hard coded based on data source
        Activity_Number	                        3                       y_test/train
        Activity_Name	                        4                       activity_labels assigned based on Activity Number
        Subject	                                5                       subjects_test/train
        tBodyAcc-mean()-X               	6                       x_test/train
        tBodyAcc-mean()-Y	                7                       x_test/train
        tBodyAcc-mean()-Z	                8                       x_test/train
        tBodyAcc-std()-X	                9                       x_test/train
        tBodyAcc-std()-Y	                10                      x_test/train
        tBodyAcc-std()-Z	                11                      x_test/train
        tGravityAcc-mean()-X	                12                      x_test/train
        tGravityAcc-mean()-Y	                13                      x_test/train
        tGravityAcc-mean()-Z	                14                      x_test/train
        tGravityAcc-std()-X	                        15                      x_test/train
        tGravityAcc-std()-Y	                        16                      x_test/train
        tGravityAcc-std()-Z	                        17                      x_test/train
        tBodyAccJerk-mean()-X	                18                      x_test/train
        tBodyAccJerk-mean()-Y	                19                      x_test/train
        tBodyAccJerk-mean()-Z	                20                      x_test/train
        tBodyAccJerk-std()-X	                21                      x_test/train
        tBodyAccJerk-std()-Y	                22                      x_test/train
        tBodyAccJerk-std()-Z	                23                      x_test/train
        tBodyGyro-mean()-X	                        24                      x_test/train
        tBodyGyro-mean()-Y	                        25                      x_test/train
        tBodyGyro-mean()-Z	                        26                      x_test/train
        tBodyGyro-std()-X	                        27                      x_test/train
        tBodyGyro-std()-Y	                        28                      x_test/train
        tBodyGyro-std()-Z	                        29                      x_test/train
        tBodyGyroJerk-mean()-X	                30                      x_test/train
        tBodyGyroJerk-mean()-Y	                31                      x_test/train
        tBodyGyroJerk-mean()-Z	                32                      x_test/train
        tBodyGyroJerk-std()-X	                33                      x_test/train
        tBodyGyroJerk-std()-Y	                34                      x_test/train
        tBodyGyroJerk-std()-Z	                35                      x_test/train
        tBodyAccMag-mean()	                        36                      x_test/train
        tBodyAccMag-std()	                        37                      x_test/train
        tGravityAccMag-mean()	                38                      x_test/train
        tGravityAccMag-std()	                39                      x_test/train
        tBodyAccJerkMag-mean()	                40                      x_test/train
        tBodyAccJerkMag-std()	                41                      x_test/train    
        tBodyGyroMag-mean()	                        42                      x_test/train
        tBodyGyroMag-std()	                        43                      x_test/train
        tBodyGyroJerkMag-mean()	                44                      x_test/train
        tBodyGyroJerkMag-std()	                45                      x_test/train
        fBodyAcc-mean()-X	                        46                      x_test/train
        fBodyAcc-mean()-Y	                        47                      x_test/train
        fBodyAcc-mean()-Z	                        48                      x_test/train
        fBodyAcc-std()-X	                        49                      x_test/train
        fBodyAcc-std()-Y	                        50                      x_test/train
        fBodyAcc-std()-Z	                        51                      x_test/train
        fBodyAcc-meanFreq()-X	                52                      x_test/train
        fBodyAcc-meanFreq()-Y	                53                      x_test/train
        fBodyAcc-meanFreq()-Z	                54                      x_test/train
        fBodyAccJerk-mean()-X	                55                      x_test/train
        fBodyAccJerk-mean()-Y	                56                      x_test/train
        fBodyAccJerk-mean()-Z	                57                      x_test/train
        fBodyAccJerk-std()-X	                58                      x_test/train
        fBodyAccJerk-std()-Y	                59                      x_test/train
        fBodyAccJerk-std()-Z	                60                      x_test/train
        fBodyAccJerk-meanFreq()-X	                61                      x_test/train
        fBodyAccJerk-meanFreq()-Y	                62                      x_test/train
        fBodyAccJerk-meanFreq()-Z	                63                      x_test/train
        fBodyGyro-mean()-X	                        64                      x_test/train
        fBodyGyro-mean()-Y	                        65                      x_test/train
        fBodyGyro-mean()-Z	                        66                      x_test/train
        fBodyGyro-std()-X	                        67                      x_test/train
        fBodyGyro-std()-Y               	        68                      x_test/train
        fBodyGyro-std()-Z	                        69                      x_test/train
        fBodyGyro-meanFreq()-X	                70                      x_test/train
        fBodyGyro-meanFreq()-Y	                71                      x_test/train
        fBodyGyro-meanFreq()-Z	                72                      x_test/train
        fBodyAccMag-mean()	                        73                      x_test/train
        fBodyAccMag-std()	                        74                      x_test/train
        fBodyAccMag-meanFreq()	                75                      x_test/train
        fBodyBodyAccJerkMag-mean()	                76                      x_test/train
        fBodyBodyAccJerkMag-std()	                77                      x_test/train
        fBodyBodyAccJerkMag-meanFreq()	        78                      x_test/train
        fBodyBodyGyroMag-mean()	                79                      x_test/train
        fBodyBodyGyroMag-std()	                80                      x_test/train
        fBodyBodyGyroMag-meanFreq()	                81                      x_test/train
        fBodyBodyGyroJerkMag-mean()	                82                      x_test/train
        fBodyBodyGyroJerkMag-std()	                83                      x_test/train
        fBodyBodyGyroJerkMag-meanFreq()	        84                      x_test/train
        
        The row counts are as follows:
        
        Data Type                               Row Count
        
        Test                                     2,947
        Train                                    7,352
        
        Total Row Count                         10,299
        
        Total dimensions of the intial merge of the data in the .zip file is 10,299 rows and 84 columns.