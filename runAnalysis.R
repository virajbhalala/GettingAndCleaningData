#install.packages("data.table")
#install.packages("reshape2")
setwd("/Users/vbhalala/Desktop/gettingAndCleaningData/")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("UCI HAR Dataset/features.txt")[,2]
x <- read.table("UCI HAR Dataset/test/X_test.txt")
y <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(x) = features


x = x[,extract_features]

y[,2] = activity_labels[y[,1]]


