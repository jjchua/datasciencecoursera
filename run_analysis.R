# run_analysis.R

library(dplyr)

## utility for collapsing dataset directory
source("flatten_dataset.R")

## Input and output directories
origdataset <- "UCI HAR Dataset"
outdataset <- "data"

# check that the input directory exists
if (!file.exists(origdataset)) {
  stop(sprintf("Directory '%s' does not exist\n", origdataset))
}

# ensure that the output directory exists
if (!file.exists(outdataset)) {
  dir.create(outdataset)
}

## Look-up tables
featLUT <- read.table(file.path(origdataset, 'features.txt'), 
                       col.name = c("featCode", "featName"), 
                       stringsAsFactors = FALSE)
actLUT <- read.table(file.path(origdataset, 'activity_labels.txt'), 
                         col.name = c("actCode", "actName"), 
                         stringsAsFactors = FALSE)

## Extracts only the measurements on the mean and standard deviation 
## for each measurement. (Note: Non-calculated mean, such as meanFreq, 
## gravityMean, etc. are excluded).
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
testSet <- flatten_dataset(featLUT, actLUT, origdataset, "test")
trainSet <- flatten_dataset(featLUT, actLUT, origdataset, "train")

## Merges the training and the test sets to create one data set.
dataAll <- rbind(trainSet, testSet)

## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.