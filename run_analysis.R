install.packages("data.table")
install.packages("dplyr")

#Libraries used
library(data.table)
library(dplyr)      #Will be use to aggregate variables to create the tidy data

#Load activity_labels - Name of activities
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Load features - Name of features
featuresNames  <- read.table("./UCI HAR Dataset/features.txt")

#Reading test data
dtX_test  <- read.table("./UCI HAR Dataset/test/X_test.txt")
dty_test  <- read.table("./UCI HAR Dataset/test/y_test.txt")
dtsub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Reading training data
dtX_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
dty_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
dtsub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Merging test and training data sets
subject  <- rbind(dtsub_train, dtsub_test)
activity <- rbind(dty_train, dty_test)
features <- rbind(dtX_train, dtX_test)

#Naming Columns
colnames(subject)  <- "Subject"
colnames(activity) <- "Activity"
colnames(features) <- t(featuresNames[,2])

#Mergin Test and Train data
completeData   <- cbind(features, activity, subject)

# Extracting the measurements on the mean and standar deviation for each measurement
ExtractMeanSTD  <- grepl(".*Mean.*|.*Std.*", names(completeData), ignore.case = TRUE)

requiredColumns <- c(ExtractMeanSTD, 562, 563)
extractedData   <- completeData[,requiredColumns]

# Naming the activities in the data set
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6)
{
  extractedData$Activity[extractedData$Activity == i] <- as.character(activitylabels[i,2])
}

extractedData$Activity <- as.factor(extractedData$Activity)
extractedData$Subject  <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)

# Creating tidyData as a data set with average for each activity and subject
tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)