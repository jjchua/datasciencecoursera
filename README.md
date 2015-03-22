# Course Project

The script `run_analysis.R` requires the dataset: 
[UCI HR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Unzip the dataset in the same directory as the script.  Edit the `origdataset` variable to point to the unzipped directory (default: "UCI HAR Dataset").  The `outdataset` variable contains the name of the output directory (default: "data").

The script:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each 
measurement (Note: Non-calculated means, such as meanFreq, 
gravityMean, etc. which do no have standard deviations are excluded.)
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
