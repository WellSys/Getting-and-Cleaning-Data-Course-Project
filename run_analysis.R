# Getting and Cleaning Data
# Course Project
# run_analysis.R
# Doug McCaleb

# See README.md for the inventory of data files that must be in the working directory for 
# this script to run.

# See CodeBook.md for a summary of the manner in which the measurements were collected and
# modified.

#
# Merge test and train data sets
#

# Read in data common to test and train

activity_labels <- read.table("activity_labels.txt")

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

# Read in test data

subjects_test <- read.table("subject_test.txt")
activities_test <- read.table("y_test.txt")
feature_data_test <- read.table("x_test.txt")
body_acc_x_test <- read.table("body_acc_x_test.txt")
body_acc_y_test <- read.table("body_acc_y_test.txt")
body_acc_z_test <- read.table("body_acc_z_test.txt")
body_gyro_x_test <- read.table("body_gyro_x_test.txt")
body_gyro_y_test <- read.table("body_gyro_y_test.txt")
body_gyro_z_test <- read.table("body_gyro_z_test.txt")
total_acc_x_test <- read.table("total_acc_x_test.txt")
total_acc_y_test <- read.table("total_acc_y_test.txt")
total_acc_z_test <- read.table("total_acc_z_test.txt")

# Using the test fields as a template, build column names for body & total common to test & train files

body_acc_x_col_names <- ""
for (i in 1:ncol(body_acc_x_test)) {
        body_acc_x_col_names[i] <- paste("Undefined_Body_Acceleration_x_Variable_", i, sep = "")
        
}

body_acc_y_col_names <- ""
for (i in 1:ncol(body_acc_y_test)) {
        body_acc_y_col_names[i] <- paste("Undefined_Body_Acceleration_y_Variable_", i, sep = "")
        
}

body_acc_z_col_names <- ""
for (i in 1:ncol(body_acc_z_test)) {
        body_acc_z_col_names[i] <- paste("Undefined_Body_Acceleration_z_Variable_", i, sep = "")
        
}

body_gyro_x_col_names <- ""
for (i in 1:ncol(body_acc_x_test)) {
        body_gyro_x_col_names[i] <- paste("Undefined_Body_Gyroscopic_x_Variable_", i, sep = "")
        
}

body_gyro_y_col_names <- ""
for (i in 1:ncol(body_acc_y_test)) {
        body_gyro_y_col_names[i] <- paste("Undefined_Body_Gyroscopic_y_Variable_", i, sep = "")
        
}

body_gyro_z_col_names <- ""
for (i in 1:ncol(body_acc_z_test)) {
        body_gyro_z_col_names[i] <- paste("Undefined_Body_Gyroscopic_z_Variable_", i, sep = "")
        
}

total_acc_x_col_names <- ""
for (i in 1:ncol(body_acc_x_test)) {
        total_acc_x_col_names[i] <- paste("Undefined_Total_Acceleration_x_Variable_", i, sep = "")
        
}

total_acc_y_col_names <- ""
for (i in 1:ncol(body_acc_y_test)) {
        total_acc_y_col_names[i] <- paste("Undefined_Total_Acceleration_y_Variable_", i, sep = "")
        
}

total_acc_z_col_names <- ""
for (i in 1:ncol(body_acc_z_test)) {
        total_acc_z_col_names[i] <- paste("Undefined_Total_Acceleration_z_Variable_", i, sep = "")
        
}


# Build the test/train indicator for test data

Test_or_Train_Test <- data.frame(Test_or_Train = rep("Test", nrow(subjects_test)), stringsAsFactors = FALSE)

# Apply Activity Labels to Test Data

colnames(activity_labels)     <- c("Activity_Number", "Activity_Name")
colnames(activities_test)     <- "Activity_Number"
activities_with_names_test    <- data.frame(Activity_Number = activities_test$Activity_Number,
                                            Activity_Name   = activity_labels[activities_test$Activity_Number,2])

# Apply column name to Subject column

colnames(subjects_test) <- "Subject"
                                            
# Apply column names to test feature data 

colnames(feature_data_test) <- col_names_561
                                            
# Apply column names for body & total test & train files

colnames(body_acc_x_test) <- body_acc_x_col_names

colnames(body_acc_y_test) <- body_acc_y_col_names

colnames(body_acc_z_test) <- body_acc_z_col_names

colnames(body_gyro_x_test) <- body_gyro_x_col_names

colnames(body_gyro_y_test) <- body_gyro_y_col_names

colnames(body_gyro_z_test) <- body_gyro_z_col_names

colnames(total_acc_x_test) <- total_acc_x_col_names

colnames(total_acc_y_test) <- total_acc_y_col_names

colnames(total_acc_z_test) <- total_acc_z_col_names

# Consolidate the test data column-wise

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


# Read in training data

subjects_train <- read.table("subject_train.txt")
activities_train <- read.table("y_train.txt")
feature_data_train <- read.table("x_train.txt")
body_acc_x_train <- read.table("body_acc_x_train.txt")
body_acc_y_train <- read.table("body_acc_y_train.txt")
body_acc_z_train <- read.table("body_acc_z_train.txt")
body_gyro_x_train <- read.table("body_gyro_x_train.txt")
body_gyro_y_train <- read.table("body_gyro_y_train.txt")
body_gyro_z_train <- read.table("body_gyro_z_train.txt")
total_acc_x_train <- read.table("total_acc_x_train.txt")
total_acc_y_train <- read.table("total_acc_y_train.txt")
total_acc_z_train <- read.table("total_acc_z_train.txt")

# Build the test/train indicator for training data

Test_or_Train_Train <- data.frame(Test_or_Train = rep("Train", nrow(subjects_train)), stringsAsFactors = FALSE)

# Apply Activity Labels to Training Data

colnames(activity_labels)    <- c("Activity_Number", "Activity_Name")
colnames(activities_train)   <- "Activity_Number"
activities_with_names_train  <- data.frame(Activity_Number = activities_train$Activity_Number,
                                           Activity_Name   = activity_labels[activities_train$Activity_Number,2])

# Apply column name to Subject column

colnames(subjects_train) <- "Subject"

# Apply column names to train feature data 

colnames(feature_data_train) <- col_names_561

# Apply column names for body & total train files

colnames(body_acc_x_train) <- body_acc_x_col_names

colnames(body_acc_y_train) <- body_acc_y_col_names

colnames(body_acc_z_train) <- body_acc_z_col_names

colnames(body_gyro_x_train) <- body_gyro_x_col_names

colnames(body_gyro_y_train) <- body_gyro_y_col_names

colnames(body_gyro_z_train) <- body_gyro_z_col_names

colnames(total_acc_x_train) <- total_acc_x_col_names

colnames(total_acc_y_train) <- total_acc_y_col_names

colnames(total_acc_z_train) <- total_acc_z_col_names

# Consolidate the training data column-wise

train_data <- cbind(Test_or_Train_Train,
                    activities_with_names_train, 
                    subjects_train, 
                    feature_data_train, 
                    body_acc_x_train,
                    body_acc_y_train,
                    body_acc_z_train,
                    body_gyro_x_train,
                    body_gyro_y_train,
                    body_gyro_z_train,
                    total_acc_x_train,
                    total_acc_y_train,
                    total_acc_z_train)

# Consolidate the test data and the training data row-wise

semi_semi_tidy_data_set <- rbind(test_data, train_data)

Observation_Number <- data.frame(Observation_Number = 1:nrow(semi_semi_tidy_data_set))

semi_tidy_data_set      <- cbind(Observation_Number, semi_semi_tidy_data_set)

write.table(semi_tidy_data_set, 
            file = "c:/workspace/semi_tidy_data_set.txt", 
            append = FALSE, 
            quote = TRUE, 
            sep = ";",
            eol = "\n", 
            na = "NA", 
            dec = ".", 
            row.names = FALSE,
            col.names = TRUE, 
            qmethod = c("escape", "double"))

# Test Results for semi_tidy_data_set
# 
# > nrow(sem_tidy_data_set)
# [1] 10299
#
# > ncol(semi_tidy_data_set)
# [1] 1718
# > 


#
# Extract only the measurements on the mean 
# and the standard deviation for each measurement
#

extracts <- names(semi_tidy_data_set)[1:5]
extracts_index <- 5
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

# Write the first_tidy_data_set to disc for verification in Excel

write.table(first_tidy_data_set, 
            file = "c:/workspace/first_tidy_data_set.txt", 
            append = FALSE, 
            quote = TRUE, 
            sep = ";",
            eol = "\n", 
            na = "NA", 
            dec = ".", 
            row.names = FALSE,
            col.names = TRUE, 
            qmethod = c("escape", "double"))

#
# Create a second, independent data set with the average 
# of each variable for each activity and each subject.
#

semi_second_independent_tidy_data_set <- aggregate(x = semi_tidy_data_set[, 6:ncol(semi_tidy_data_set)], 
                                                   by = list(semi_tidy_data_set$Activity_Number, semi_tidy_data_set$Subject), 
                                                   FUN = "mean", 
                                                   na.rm = T)

# Fix up column names resulting from aggregation

colnames(semi_second_independent_tidy_data_set)[1] <- "Activity_Number"

colnames(semi_second_independent_tidy_data_set)[2] <- "Subject"

second_activity_names <- data.frame(Activity_Number = semi_second_independent_tidy_data_set$Activity_Number,
                                    Activity_Name   = activity_labels[semi_second_independent_tidy_data_set$Activity_Number,2])

second_independent_tidy_data_set <- cbind(second_activity_names,
                                          semi_second_independent_tidy_data_set[ , 2:ncol(semi_second_independent_tidy_data_set)])

# Revise column names for each variable to reflect that these are now means of the original variables

mean_names <- ""
mean_names_index = 0
for (colname in names(second_independent_tidy_data_set)[4:ncol(second_independent_tidy_data_set)]){
        mean_names_index <- mean_names_index + 1
        mean_names[mean_names_index] <- (paste("Mean_" , colname, sep = ""))
}

colnames(second_independent_tidy_data_set)[4:ncol(second_independent_tidy_data_set)] <- mean_names

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
