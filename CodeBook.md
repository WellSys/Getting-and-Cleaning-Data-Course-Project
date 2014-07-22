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

Test Analysis Data 
------------------

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

Train Analysis Data
-------------------

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
         

Measurement Data Summary
========================



Analysis Data Summary
=====================