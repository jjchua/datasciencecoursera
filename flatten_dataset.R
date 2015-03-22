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
  
  # time and freq domain feature vectors
  xdata <- read.table(file.path(datadir, prefix, sprintf('X_%s.txt', prefix)), 
                      stringsAsFactors = FALSE)
  
  # Extract only the measurements on the mean and standard deviation 
  # for each measurement. (Note: Non-calculated mean, such as meanFreq, 
  # gravityMean, etc. are excluded).
  selected <- featLUT[grep("(mean|std)[(][)]", featLUT[,2]), 1]
  xdata <- xdata[,selected]
  
  # activity
  ydata <- read.table(file.path(datadir, prefix, sprintf('y_%s.txt', prefix)), 
                      stringsAsFactors = FALSE,
                      col.names = "actCode")
  ydata <- left_join(ydata, actLUT, "actCode")
  
  # concatenate activity with feature columns
  if ((nrow(xdata) != nrow(ydata)) || (nrow(subjects) != nrow(ydata))) {
    stop("Number of observations do not match\n")
  }
  result <- cbind(subjects, ydata, xdata);

  # intertial signals
  for (a in c("body", "total")) {
    for (b in (if(a=="total") c("acc") else c("acc", "gyro"))) {
      for (c in c("x", "y", "z")) {
        fn <- file.path(datadir, prefix, "Inertial Signals",
                        sprintf("%s_%s_%s_%s.txt", a, b, c, prefix))
        d <- read.table(fn, stringsAsFactors = FALSE)
        colnames(d) <- paste(a,b,c,colnames(d),sep="_")
        if (nrow(result) != nrow(d)) { 
          stop(sprintf("Data for %s %s %s does not match expected num of observations",
                        a, b, c))
        }
        result <- cbind(result, d)
      }
    }
  }
  
  return(result)
}

