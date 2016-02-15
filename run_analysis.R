
# Step1: Setting the right workin directory
#set("~/final_project")

# Creating the testing data file which consists of adding three
# files togegher: X_test.txt, Y_test.txt, subject_test.txt
test_x <- read.table("UCI HAR Dataset\\test\\X_test.txt", header=FALSE, sep="")
test_y <- read.table("UCI HAR Dataset\\test\\y_test.txt", header=FALSE, sep="")
test_subject <- read.table("UCI HAR Dataset\\test\\subject_test.txt", header=FALSE, sep="")

# Merging all the testing data
merge_test <- cbind(test_x, test_y, test_subject)

# Creating the training data variables 
train_x <- read.table("UCI HAR Dataset\\train\\X_train.txt", header=FALSE, sep="")
train_y <- read.table("UCI HAR Dataset\\train\\y_train.txt", header=FALSE, sep="")
train_subject <- read.table("UCI HAR Dataset\\train\\subject_train.txt", header=FALSE, sep="")

# Merging the training data 
merge_train <- cbind(train_x, train_y, train_subject)

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

#merge both the testing and training
final_table <- rbind(merge_test,merge_train)

# Add Column name to the final_table
colnames(final_table) <- features_desc

# Filter the activities in the final table
final_table$Activity <- factor(final_table$Activity, levels=activity_labels[,1], labels=activity_labels[,2])

# Create the tidy file
write.table(final_table, "tidy.txt", row.names= FALSE, quote= FALSE)


# Create table with only the mean of each activity
selected_features <- grep(".*mean.*", features_desc)

# Create subset of the the final table
final_table_subset <- final_table[,selected_features]

# Write the new tidy file
write.table(final_table_subset, "selected_tidy.txt", row.names= FALSE, quote= FALSE)
