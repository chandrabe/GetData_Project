if (!require("data.table")) {
  install.packages("data.table")
}

if (!require("dplyr")) {
  install.packages("dplyr")
}

if (!require("plyr")) {
  install.packages("plyr")
}

library("data.table")
library("dplyr")
library("plyr")

## Read Data
x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")

x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")

## Read Features for x columns name
features <- read.table("data/UCI HAR Dataset/features.txt")

## Read Activity Labels and add to y dataset
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt")

y_train[,2] <- activity_labels[y_train[,1], 2]
y_test[,2] <- activity_labels[y_test[,1], 2]

## Assign names to columns
names(x_test) <- features[,2]
names(x_train) <- features[,2]

names(y_train) <- c("ActivityId", "ActivityLabel")
names(y_test) <- c("ActivityId", "ActivityLabel")

names(subject_test) <- "Subject"
names(subject_train) <- "Subject"

## Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std_features <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
x_test <- subset(x_test, select=as.character(mean_std_features))
x_train <- subset(x_train, select=as.character(mean_std_features))

## Merges the training and the test sets to create one data set with all UCI_HAR data.
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

UCI_HAR <- cbind(subject, y, x)

## creates a second, independent tidy data set with the average of each variable for each activity and each subject.
UCI_HAR_Tidy <- aggregate(. ~ Subject + ActivityLabel, UCI_HAR, mean)

UCI_HAR_Tidy <- UCI_HAR_Tidy %>%
  select( -ActivityId ) %>%
  arrange(Subject, ActivityLabel)

write.table(UCI_HAR_Tidy, file = "UCI_HAR_Tidy.txt", row.names = FALSE)



