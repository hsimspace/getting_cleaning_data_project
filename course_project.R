
# Creating the testing data file which consists of adding three
# files togegher: X_test.txt, Y_test.txt, subject_test.txt
test_x <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="") 
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")

# Merging all the testing data
merge_test <- cbind(test_x, test_y, test_subject)

# Creating the training data variables 
train_x <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")

# Merging the training data 
merge_train <- cbind(train_x, train_y, train_subject)

# Merge both the testing and training
final_table <- rbind(merge_test,merge_train)

# Creating the labels and features files
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
features_labels <- read.table("UCI HAR Dataset/features.txt")
features_labels[,2] <- as.character(features_labels[,2])

# File containing the features descriptions
features_desc <- features_labels[,2]

# Complete the features_desc vector with two more elements
features_desc <- c(features_desc, "Activity", "Subject")

# File containing the activity descriptions
activity_desc <- activity_labels[,2]

# Add Column name to the final_table
colnames(final_table) <- features_desc 

# Filter the activities in the final table
final_table$Activity <- factor(final_table$Activity, levels=activity_labels[,1], labels=activity_labels[,2])

# Create table with only the mean of each activity
selected_features <- grep("*mean*|*Mean*|*std*", features_desc)

# Complete the selected_features vector with the final two columns
selected_features <- c(selected_features, "562", "563")

# Convert the selected_features vector to numeric
selected_features <- as.numeric(selected_features)

# Create subset of the the final table
final_table_subset <- final_table[,selected_features]

# Pass the final_table_subset headings to a vector
final_table_heading <- colnames(final_table_subset)

# Renaming the column headings step by step
final_table_heading <- gsub("^t", "Time", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("^f", "Frequency", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("Acc", "Accelerometer", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("Gyro", "Gyroscope", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("angle", "Angle", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("Mag", "Magnitude", final_table_heading, ignore.case = TRUE)
final_table_heading <- gsub("freq", "Frequency", final_table_heading, ignore.case = TRUE)

# Reset the column heading for the final_table_subset
colnames(final_table_subset) <- final_table_heading  

# Output the preliminary tidy data
write.table(final_table_subset, "preliminary_tidy_data.txt", row.names= FALSE, quote= FALSE)


# Select only the means of each variables
select_right_variables <- grep("*mean*", final_table_heading, ignore.case = TRUE)

# Add the final two columns to the select_right_variables
select_right_variables <- c(select_right_variables, 87, 88)

# Preliminary tidy table
tidy <- final_table_subset[select_right_variables]

# Order to the preliminary tidy information
tidy <- tidy[order(tidy$Activity, tidy$Subject), ]

# Write the new tidy file
write.table(tidy, "tidy_data.txt", row.names= FALSE, quote= FALSE)




















































