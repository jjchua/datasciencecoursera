## flatten_dataset.R

## This function creates a flat file from the multiple UCI HAR dataset files
## Note: It assumes that the files are named as expected, and that they exist.

## @featLUT   lookup table for feature codes and names
## @actLUT    lookup table for activity codes and names
## @datadir   directory containing dataset
## @prefix    dataset prefix ("test" or "train") which is
##            used to determine the source directory and filename.

flatten_dataset <- function(featLUT, actLUT, datadir, prefix) {
  
  # subject code per observation
  subjects <- read.table(file.path(datadir, prefix, sprintf('subject_%s.txt', prefix)), 
                        stringsAsFactors = FALSE, 
                        col.names = "subjectID")
  
  # time-domain feature vectors
  xdata <- read.table(file.path(datadir, prefix, sprintf('X_%s.txt', prefix)), 
                      stringsAsFactors = FALSE)
  obsCode <- 1:nrow(xdata)
  xdata <- cbind(obsCode, xdata)
  
  # freq-domain feature vectors
  ydata <- read.table(file.path(datadir, prefix, sprintf('y_%s.txt', prefix)), 
                      stringsAsFactors = FALSE)
  obsCode <- 1:nrow(ydata)
  ydata <- cbind(obsCode, ydata)
  
  # sanity check before merging
  nrow(xdata) == nrow(ydata) || stop("Number of X and y observations do not match\n")
  
  xymerged <- merge(xdata, ydata)
}