README.md
=========
Getting and Cleaning Data

Course Project 

Doug McCaleb

 Overview
==========================================================================================================================

This README.md file documents the submission for the course project for Getting and Cleaning data.

The course project is based on the data and information available at the following URLs:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This implementation of the project relies solely on a straight-forward reading of the course project instructions.

Because there is not any vernacular explanation of the variables, we avoid the risk of misconstrual and do not 
fabricate column names beyond the language provided in the features.txt file and readme file, except where we
are required to derive means, in which case we prepend "Mean" to the affected column names.


 Data 
==========================================================================================================================

All data is found in the .zip file at the second URL, above, and all data files from all folders of the .zip file
must be in the working directory in which run_analysis.R is run.

Inventory of data required and how it is used:


Data Shared by Test and Train
--------------------------------------------------------------------------------------------------------------------------
 
        
        Memory Variable         Source File             Data Description
        
        activity_labels         activity_labels.txt     Names of activities, to be looked up based on activity 
                                                        numbers in the y_test.txt file
        
        col_names_561           features.txt            Feature names related to the columns of the x_test data
                                                        This file lists feature names down its first column, and 
                                                        these names must be used horizontally across the 
                                                        x_test.txt and x_train.txt data, below, as column names.

Test Data 
--------------------------------------------------------------------------------------------------------------------------

         Memory Variable         Source File            Data Description
        
         subjects_test           subject_test.txt       Identifier numbers of subjects (people) related to rows 
                                                        of test data
                                                        One row for each row of feature data from x_test.txt
                                                        Add to feature data by cbind
         
         activities_test         y_test.txt             Identifier numbers of actvities related to rows of test 
                                                        data
                                                        One row for each row of feature data from x_test.txt
                                                        Add to feature data by cbind
                                                        These numbers are used to look up activity names that 
                                                        are in the variable called activity_labels which comes 
                                                        from activity_labels.txt
         
         feature_data_test       x_test.txt             561-column-wide test data described in features.txt 
                                                        These are the data that go in the columns named in 
                                                        col_names_561, above, and are the results of analysis 
                                                        on the observation vectors in the body_ and total_ files 
                                                        below.
         
         The following files have no metadata and no descriptions for the variables in them, and are reputed to
         contain data inferred from windowing actual instrumentation output from the phone.
        
         These are added by cbind to the test features data
        
         Column headings for these must be the same as the column headings for their corresponding _train 
         versions, or we will not be able to rbind test and train data.
        
         body_acc_x_test  body_acc_x_test.txt  Body acceleration x-axis data related to rows of test data
         body_acc_y_test  body_acc_y_test.txt  Body acceleration y-axis data related to rows of test data
         body_acc_z_test  body_acc_z_test.txt  Body acceleration z-axis data related to rows of test data
         body_gyro_x_test body_gyro_x_test.txt Body gyroscopic x-axis data related to rows of test data
         body_gyro_y_test body_gyro_y_test.txt Body gyroscopic y-axis data related to rows of test data
         body_gyro_z_test body_gyro_z_test.txt Body gyroscopic z-axis data related to rows of test data
         total_acc_x_test total_acc_x_test.txt Total acceleration x-axis data related to rows of test data
         total_acc_y_test total_acc_y_test.txt Total acceleration y-axis data related to rows of test data 
         total_acc_z_test total_acc_z_test.txt Total acceleration z-axis data related to rows of test data

Train Data
--------------------------------------------------------------------------------------------------------------------------

         Memory Variable         Source File            Data Description
         
         subjects_train          subject_train.txt      Identifier numbers of subjects (people) related to 
                                                        rows of train data. 
                                                        One row for each row of feature data from x_train.txt
                                                        Add to feature data by cbind
         
         activities_train        y_train.txt            Identifier numbers of actvities related to rows of 
                                                        train data
                                                        One row for each row of feature data from x_train.txt
                                                        Add to feature data by cbind
                                                        These numbers are used to look up activity names that 
                                                        are in the variable called activity_labels which comes 
                                                        from activity_labels.txt
        
         feature_data_train      x_train.txt            561-column-wide train data described in features.txt 
                                                        These are the data that go in the columns named in in 
                                                        col_names_561, above, and are the results of analysis 
                                                        on the observation vectors in the body_ and total_ 
                                                        files below.
         
         The following files have no metadata and no descriptions for the variables in them, and are reputed 
         to contain data inferred from windowing actual instrumentation output from the phone.
         
         These are added by cbind to the train features data.
         
         Column names for these must be the same as the column names for their corresponding _test versions, 
         or we will not be able to rbind test and train data.
         
         body_acc_x_train  body_acc_x_train.txt  Body acceleration x-axis data related to rows of train data
         body_acc_y_train  body_acc_y_train.txt  Body acceleration y-axis data related to rows of train data
         body_acc_z_train  body_acc_z_train.txt  Body acceleration z-axis data related to rows of train data
         body_gyro_x_train body_gyro_x_train.txt Body gyroscopic x-axis data related to rows of train data
         body_gyro_y_train body_gyro_y_train.txt Body gyroscopic y-axis data related to rows of train data
         body_gyro_z_train body_gyro_z_train.txt Body gyroscopic z-axis data related to rows of train data
         total_acc_x_train total_acc_x_train.txt Total acceleration x-axis data related to rows of train data
         total_acc_y_train total_acc_y_train.txt Total acceleration y-axis data related to rows of train data 
         total_acc_z_train total_acc_z_train.txt Total acceleration z-axis data related to rows of train data

 Process
==========================================================================================================================

 All work is accomplished by run_analysis.R, and consists of the following steps of the course project Instruction:

 1.Merge the training and the test sets to create one data set.  (My step 1)

 2.Extracts only the measurements on the mean and standard deviation for each measurement. (My step 4)

 3.Uses descriptive activity names to name the activities in the data set (My step 2 and throughout)

 4.Appropriately labels the data set with descriptive variable names. (My step 3 and throughout)

 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  (My step 5)

1. Merge Process (Instruction step 1)
--------------------------------------------------------------------------------------------------------------------------

 1. The data shared by both test and train data is read into memory variables inventoried above. This includes activity names 
 and columns for the feature data (x_test/train).

 2. The test data is read into memory variables.

 3. The test data is merged into a row structure that includes a test/train identifier column, activity number column, activity 
 name column, subject number column, feature columns, and columns for all measurement vectors.  

 Here's the vignette of code that accomplishes step 3 of the merge process:

         ```{r}
         test_data <- cbind(Test_or_Train_Test,
                            activities_with_names_test, 
                            subjects_test, 
                            feature_data_test, 
                            body_acc_x_test,
                            body_acc_y_test,
                            body_acc_z_test,
                            body_gyro_x_test,
                            body_gyro_y_test,
                            body_gyro_z_test,
                            total_acc_x_test,
                            total_acc_y_test,
                            total_acc_z_test)
         ```

 4. The train data is read into memory variables.

 5. The train data is merged into a row structure that includes a test/train identifier column, activity number column, activity 
 name column, subject number column, feature columns, and columns for all measurement vectors.  This merge process uses code that 
 is similar to the code shown above, for test data.

 6. After consolidating the test data into a single data frame using cbind and, separately, consolidating the train data into 
 a another single data frame using cbind, we consolidate the test data with the train data using rbind. 

 This is quite straightforward:

        ```{r}
        semi_semi_tidy_data_set <- rbind(test_data, train_data)
        ```

 7. Observation numbers are inferred by serializing the rows and cbinded as the first column.

        ```{r}
        Observation_Number <- data.frame(Observation_Number = 1:nrow(semi_semi_tidy_data_set))
        
        semi_tidy_data_set      <- cbind(Observation_Number, semi_semi_tidy_data_set)
        ```

 8. Results: The columns across the resulting data structure are as follows:

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

2.  How we assigned descriptive activity names (Instruction step 3)
--------------------------------------------------------------------------------------------------------------------------

 Activity numbers are used to associate activity names, and to name these columns along the way:

        ```{r}
        colnames(activity_labels)     <- c("Activity_Number", "Activity_Name")
        colnames(activities_test)     <- "Activity_Number"
        activities_with_names_test    <- data.frame(Activity_Number = activities_test$Activity_Number,
                                                    Activity_Name   = activity_labels[activities_test$Activity_Number,2])
        ```

3. Where and how we inferred descriptive variable names (Instruction step 4)
--------------------------------------------------------------------------------------------------------------------------

  Vernacular naming was accomplished by translating names provided in the data using guidance outlined in the code book as to the  *probable* meaning of the name.  Name translations are depicted in the code book Appendix, Feature Names Vernacular Translation for reference. 

        '''{r}
        old_names_561 <- as.vector(read.table("features.txt")[,2])

        col_names_561 <- as.vector(read.table("features.txt")[,2])
        
        # Tidy-up the column names for the 561 feature columns
        
        col_names_561 <- gsub("^t", "Time_Domain_" ,col_names_561)
        
        col_names_561 <- gsub("^f", "Frequency_Domain_" ,col_names_561)
        
        col_names_561 <- gsub("BodyAcc", "Body_Acceleration_" ,col_names_561)
        
        col_names_561 <- gsub("GravityAcc", "Gravity_Acceleration_" ,col_names_561)
        
        col_names_561 <- gsub("BodyGyro", "Body_Gyroscopic_" ,col_names_561)
        
        col_names_561 <- gsub("JerkMag", "Jerk_Magnitude_" ,col_names_561)
        
        col_names_561 <- gsub("Mag-", "Magnitude_" ,col_names_561)
        
        col_names_561 <- gsub("_mean()", "_Mean_" ,col_names_561)
        
        col_names_561 <- gsub("-mean()", "_Mean_" ,col_names_561)
        
        col_names_561 <- gsub("-std()", "_Standard_Deviation_" ,col_names_561)
        
        col_names_561 <- gsub("_std()", "_Standard_Deviation_" ,col_names_561)
        
        col_names_561 <- gsub("-mad()", "_Mean_Absolute_Deviation_" ,col_names_561)
        
        col_names_561 <- gsub("_mad()", "_Mean_Absolute_Deviation_" ,col_names_561)
        
        col_names_561 <- gsub("-max()", "_Maximum_" ,col_names_561)
        
        col_names_561 <- gsub("_max()", "_Maximum_" ,col_names_561)
        
        col_names_561 <- gsub("-min()", "_Minimum_" ,col_names_561)
        
        col_names_561 <- gsub("_min()", "_Minimum_" ,col_names_561)
        
        col_names_561 <- gsub("-sma()", "_Signal_Magnitude_Area_" ,col_names_561)
        
        col_names_561 <- gsub("_sma()", "_Signal_Magnitude_Area_" ,col_names_561)
        
        col_names_561 <- gsub("-energy()", "_Energy_" ,col_names_561)
        
        col_names_561 <- gsub("_energy()", "_Energy_" ,col_names_561)
        
        col_names_561 <- gsub("-iqr()", "_Interquartile_Range_" ,col_names_561)
        
        col_names_561 <- gsub("_iqr()", "_Interquartile_Range_" ,col_names_561)
        
        col_names_561 <- gsub("-entropy()", "_Entropy_" ,col_names_561)
        
        col_names_561 <- gsub("_entropy()", "_Entropy_" ,col_names_561)
        
        col_names_561 <- gsub("-arCoeff()", "_Autoregression_Coefficient_" ,col_names_561)
        
        col_names_561 <- gsub("_arCoeff()", "_Autoregression_Coefficient_" ,col_names_561)
        
        col_names_561 <- gsub("-correlation()", "_Correlation_" ,col_names_561)
        
        col_names_561 <- gsub("_correlation()", "_Correlation_" ,col_names_561)
        
        col_names_561 <- gsub("-skewness()", "_Skewness_" ,col_names_561)
        
        col_names_561 <- gsub("_skewness()", "_Skewness_" ,col_names_561)
        
        col_names_561 <- gsub("-kurtosis()", "_Kurtosis_" ,col_names_561)
        
        col_names_561 <- gsub("_kurtosis()", "_Kurtosis_" ,col_names_561)
        
        col_names_561 <- gsub("-bandsEnergy()", "bandsEnergy_" ,col_names_561)
        
        col_names_561 <- gsub("_bandsEnergy()", "bandsEnergy_" ,col_names_561)
        
        col_names_561 <- gsub("-maxInds()", "_Index_of_Maximum_Frequency_" ,col_names_561)
        
        col_names_561 <- gsub("_maxInds()", "_Index_of_Maximum_Frequency_" ,col_names_561)
        
        col_names_561 <- gsub("_Maximum_Inds$", "_Index_of_Maximum_Frequency" ,col_names_561)
        
        col_names_561 <- gsub("[[:punct:]]", "_", col_names_561)
        
        col_names_561 <- gsub("____", "_" ,col_names_561)
        
        col_names_561 <- gsub("___", "_" ,col_names_561)
        
        col_names_561 <- gsub("__", "_" ,col_names_561)
        
        col_names_561 <- gsub("_$", "" ,col_names_561)
        
        col_names_561 <- gsub("^angle_tBody_Acceleration_Mean_gravity",                       
                              "Angle_Between_Time_Dimension_Body_Acceleration_Mean_and_Gravity",col_names_561)
        
        col_names_561 <- gsub("^angle_tBody_Acceleration_JerkMean_gravityMean",                       
                              "Angle_Between_Time_Dimension_Body_Acceleration_Jerk_Mean_and_Gravity_Mean",col_names_561)
        
        col_names_561 <- gsub("^angle_tBody_Gyroscopic_Mean_gravityMean",                       
                              "Angle_Between_Time_Dimension_Body_Gyroscopic_Mean_and_Gravity_Mean",col_names_561)
        
        col_names_561 <- gsub("^angle_tBody_Gyroscopic_JerkMean_gravityMean",                       
                              "Angle_Between_Time_Dimension_Body_Jerk_Mean_and_Gravity_Mean",col_names_561)
        
        col_names_561 <- gsub("^angle_X_gravityMean",                       
                              "Angle_Between_X_Vector_and_Gravity_Mean",col_names_561)
        
        col_names_561 <- gsub("^angle_Y_gravityMean",                       
                              "Angle_Between_Y_Vector_and_Gravity_Mean",col_names_561)
        
        col_names_561 <- gsub("^angle_Z_gravityMean",                       
                              "Angle_Between_Z_Vector_and_Gravity_Mean",col_names_561)
        '''



 For column names for the windowed measurement data vectors we infer some vernacular names based on the file names, thus:

        ```{r}
        body_acc_x_col_names <- ""
        for (i in 1:ncol(body_acc_x_test)) {
                body_acc_x_col_names[i] <- paste("Undefined_Body_Acceleration_x_Variable_", i, sep = "")
        ```

 In this way, for columns in body_acc_x_test we thus form the column names "Undefined_Body_Acceleration_x_Variable_1" 
 through "Undefined_Body_Acceleration_x_Variable_128", and likewise for all the body_ and total_ windowed measurement data files.

4. How we did the extract of "only the measurements on the mean and standard deviation for each measurement".  (Instruction step 2)
--------------------------------------------------------------------------------------------------------------------------

 1. To select columns for the extract we built a vector, extracts, to use as a select argument with the subset() function, 
  by iterating across the column names of the merged data frame, semi_tidy_data_set, using regular expressions to look for 
  "mean" or "std" in the column name. Where we found "mean" or "std" in the column name, the column name was appended to 
  the extracts vector. 

 2. We then subsetted the merged data set using this vector as the select argument to produce the first tidy data set.

        ```{r}
        for (i in 1:ncol(semi_tidy_data_set)){
                       
                if (regexpr("Standard_Deviation", names(semi_tidy_data_set)[i]) > 0){
                        extracts_index <- extracts_index + 1
                        extracts[extracts_index] <- names(semi_tidy_data_set[i])
                }
                
                if ((regexpr("Mean",          names(semi_tidy_data_set)[i]) > 0) &
                    (regexpr("Absolute",      names(semi_tidy_data_set)[i]) < 0) &
                     regexpr("Angle_Between", names(semi_tidy_data_set)[i]) < 0)  {
                        extracts_index <- extracts_index + 1
                        extracts[extracts_index] <- names(semi_tidy_data_set[i])
                }    
        }
        
        first_tidy_data_set <- subset(semi_tidy_data_set, select=extracts)
        ```
 3. Results: The columns across the resulting data structure are as follows:

                                                                        Column 
        Column Name                                                     Number                Source

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

5. How we created a second, independent tidy data set with the average of each variable for each activity and each subject.  (Instruction step 5)
--------------------------------------------------------------------------------------------------------------------------

 Interpretation: Our approach to this takes the domain of data as all-inclusive, as there is no restriction in the instruction.
 Our approach also makes the inferrence that the instruction intends to convey that we strike the mean of each variable 
 for every unique combination of activity and subject, as the alternative data structure of combining domain-wide means
 for each activity with separate domain-wide means for each subject into one data set would appear to lack any rational purpose.

 1. Aggregate() -- We use the aggregate() function to strike the means based on the grouping criteria in our interpretation, 
 passing activty number and subject to the by argument in a list.

 This vignette of code gives us the basic data structure and the arithmetic means. Note that, to include the appropriate
 domain of data, we use the final merged data frame (semi_tidy_data_set), and not the extract data frame (first_tidy_data_set) 
 from our Step 4/Instruction step 2, as the extract data frame does not include all variables and the merge data frame does.

        ```{r}
        semi_second_independent_tidy_data_set <- aggregate(x = semi_tidy_data_set[, 6:ncol(semi_tidy_data_set)], 
                                                           by = list(semi_tidy_data_set$Activity_Number, 
                                                                     semi_tidy_data_set$Subject), 
                                                           FUN = "mean", 
                                                           na.rm = T)
        
        ```

 2.  In the course of this, the aggregate function affects column names, and we had to redress this for the final version.

 Here we restore column names lost in the aggregate() call and produce the second_independent_tidy_data_set.
        
        ```{r}
        # Fix up column names resulting from aggregation
        
        colnames(semi_second_independent_tidy_data_set)[1] <- "Activity_Number"
        
        colnames(semi_second_independent_tidy_data_set)[2] <- "Subject"
        ```

 3.  Because we aggregated the data on activity numbers and for simplicity did not carry forward the activity names, here we reapply 
 the activity names using the list of activity numbers in the aggregated structure, producing the second_independent_tidy_data_set
         
          ```{r}
        
          second_activity_names <- data.frame(
                                Activity_Number = semi_second_independent_tidy_data_set$Activity_Number,
                                Activity_Name   = activity_labels[semi_second_independent_tidy_data_set$Activity_Number,2])
        
          second_independent_tidy_data_set <- cbind(
                                second_activity_names,
                                semi_second_independent_tidy_data_set[ , 2:ncol(semi_second_independent_tidy_data_set)])
        
          ```

 4. In line with course project Instruction step 4 to use descriptive variable names, here we revise the 
 column names in the second_independent_tidy_data_set for descriptive accuracy by adding the word "Mean" 
 to the beginning of the variable columns. 

 Again, we do this by iterating across the column names for the averaged variables in columns 4 and following,
 prepending "Mean" to each column name, and appending each new column name to a vector we'll use with
 colnames(second_independent_tidy_data_set) to rename the columns.
        
        ```{r}
        # Revise column names for each variable to reflect that these are now means of the original variables
        
        mean_names <- ""
        mean_names_index = 0
        for (colname in names(second_independent_tidy_data_set)[4:ncol(second_independent_tidy_data_set)]){
                mean_names_index <- mean_names_index + 1
                mean_names[mean_names_index] <- (paste("Mean_" , colname, sep = ""))
        }
        
        colnames(second_independent_tidy_data_set)[4:ncol(second_independent_tidy_data_set)] <- mean_names
        
        ```

 5. Results: The columns across the resulting data structure are as follows:
 
        Column Name                             Column Number           Source
        
        Activity Number                         1                       y_test/train
        Activity Name                           2                       activity_labels assigned based on Activity Number
        Subject Number                          3                       subjects_test/train
        Means of 561 feature columns            4 - 564                 x_test/train
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
        
  This data structure is in second_indpendent_tidy_data_set in run_analsyis.R, and run_analysis.R writes second_independent_tidy_data_set.txt to disc. 

 6. Creating the data set on disc.

 This was straighforward. Note that, because there were commas in the column names provided in the .zip file,
 we used the semicolon ";" as a separator so we could parse the file into Excel and manually verify our averages.

        ```{r}
        
        write.table(second_independent_tidy_data_set, 
                    file = "c:/workspace/second_independent_tidy_data_set.txt", 
                    append = FALSE, 
                    quote = TRUE, 
                    sep = ";",
                    eol = "\n", 
                    na = "NA", 
                    dec = ".", 
                    row.names = FALSE,
                    col.names = TRUE, 
                    qmethod = c("escape", "double"))
        
        ```            


