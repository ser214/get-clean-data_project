#Load libraries
library(dplyr)

#1. Merge training and test sets to create one data set
features <- read.table ("UCI_HAR_Dataset/features.txt", col.names = c("index","feature"))
activity_labels <- read.table ("UCI_HAR_Dataset/activity_labels.txt", col.names= c("code", "activity"))

#training set
x_train <- read.table ("UCI_HAR_Dataset/train/X_train.txt")
colnames(x_train) <- features$feature
y_train <- read.table ("UCI_HAR_Dataset/train/y_train.txt", col.names = "activity_code")
subject_train <- read.table ("UCI_HAR_Dataset/train/subject_train.txt", col.names = "subject")                      

#test set
x_test <- read.table ("UCI_HAR_Dataset/test/X_test.txt")
colnames(x_test) <- features$feature
y_test <- read.table ("UCI_HAR_Dataset/test/y_test.txt", col.names = "activity_code")
subject_test <- read.table ("UCI_HAR_Dataset/test/subject_test.txt", col.names = "subject")                      

#merge the datasets
x_merge <- rbind (x_train, x_test)
y_merge <- rbind (y_train, y_test)
subject_merge <- rbind(subject_train, subject_test)

merged_data <- cbind(subject_merge, y_merge, x_merge)

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 

selected_columns <- grep("mean\\(\\)|std\\(\\)", features$feature, value = TRUE)
tidy_data <- merged_data %>%
  select (subject, activity_code, all_of(selected_columns))

#3. Use descriptive activity names to name the activities in the data set
tidy_data <- tidy_data %>%
  left_join(activity_labels, by = c("activity_code" = "code")) %>%
  select (-activity_code) %>%
  rename (activity = activity)
# 4. Appropriately label the data set with descriptive variable names.
names(tidy_data) <- gsub("^t", "Time", names(tidy_data))
names(tidy_data) <- gsub("^f", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data) <- gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data) <- gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data) <- gsub("BodyBody", "Body", names(tidy_data))

#5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
final_tidy_data <- tidy_data %>%
  group_by(subject, activity) %>%
  summarize(across(everything(), mean, .names = "mean_{.col}"), .groups = "drop")

#6. Save the final tidy dataset to a file
write.table(final_tidy_data, "final_tidy_data.txt", row.names = FALSE)