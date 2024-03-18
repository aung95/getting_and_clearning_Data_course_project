# run_analysis

# Packages
library(dplyr)
library(stringr)

# Load feature names and activity labels
features.info <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE) # Step 3: Uses descriptive activity names to name the activities in the data set

# Identify mean and std feature columns 
# (part of STEP 2 : Extracts only the measurements on the mean and standard deviation for each measurement and STEP 4: Appropriately labels the data set with descriptive variable names)
mean_std_filter <- grepl("mean|std", features.info$V2, ignore.case = TRUE)

# Load and prepare training data
training.set <- read.table("UCI HAR Dataset/train/X_train.txt")
training.labels <- read.table("UCI HAR Dataset/train/y_train.txt")
training.subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

training <- training.set[, mean_std_filter] %>% # Part of step 2
  setNames(features.info$V2[mean_std_filter]) %>% # Part of step 4
  mutate(Subject = training.subject$V1,
         ActivityID = training.labels$V1) %>%
  left_join(activity.labels, by = c("ActivityID" = "V1")) %>% # Part of step 3
  select(-ActivityID) %>%
  rename(Activity = V2)

# Load and prepare testing data
testing.set <- read.table("UCI HAR Dataset/test/X_test.txt")
testing.labels <- read.table("UCI HAR Dataset/test/y_test.txt")
testing.subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

testing <- testing.set[, mean_std_filter] %>% # Part of step 2
  setNames(features.info$V2[mean_std_filter]) %>% # Part of step 4
  mutate(Subject = testing.subject$V1,
         ActivityID = testing.labels$V1) %>%
  left_join(activity.labels, by = c("ActivityID" = "V1")) %>% # Part of step 3
  select(-ActivityID) %>%
  rename(Activity = V2)

# STEP 1 : Merges the training and the test sets to create one data set.
set.final <- rbind(training, testing)

write.table(set.final, file = "tidydataset.txt", row.names = FALSE)


# STEP 5 :  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
average_set <- set.final %>%
  group_by(Subject, Activity) %>%
  summarise(across(everything(), ~ mean(.x, na.rm = TRUE))) 

# Display the first few rows of the resulting tidy dataset
head(average_set)

# upload your data set as a txt file created with write.table() using row.name=FALSE (do not cut and paste a dataset directly into the text box, as this may cause errors saving your submission).
write.table(average_set, file = "average.results.txt", row.names = FALSE)
