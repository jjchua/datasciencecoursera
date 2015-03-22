_Note:_ Columns 4 to 69 are as described in the `feature_info.txt` file in the source dataset.  To summarise:

* tAcc and tGyr are 3-axial accelerometer and gyroscope signals (prefix 't' to denote time domain), captured at a constant rate of 50 Hz.  The signals were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
* tBodyAcc and tGravityAcc are body and gravity acceleration signals, derived from tAcc using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* tBodyAccJerk and tBodyGyroJerk are the body linear acceleration and angular velocity, derived in the time domain
* tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag are the magnitude of these three-dimensional signals
* fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag (prefix 'f' indicates frequency domain) are the Fast Fourier Transform (FFT) of these signals.

The following suffixes:

* mean(): denotes the Mean value
* std(): denotes the Standard deviation
* "-XYZ": denotes the X, Y and Z directions


|Column|ColumnName|Description|
|------:|:-------------------:|:-----------------------------------------|
|1|subjectID|Identifies the subject who performed the activity|
|2|actCode|Class code for activity|
|3|actName|Activity name|
|4|V1|tBodyAcc-mean()-X|
|5|V2|tBodyAcc-mean()-Y|
|6|V3|tBodyAcc-mean()-Z|
|7|V4|tBodyAcc-std()-X|
|8|V5|tBodyAcc-std()-Y|
|9|V6|tBodyAcc-std()-Z|
|10|V41|tGravityAcc-mean()-X|
|11|V42|tGravityAcc-mean()-Y|
|12|V43|tGravityAcc-mean()-Z|
|13|V44|tGravityAcc-std()-X|
|14|V45|tGravityAcc-std()-Y|
|15|V46|tGravityAcc-std()-Z|
|16|V81|tBodyAccJerk-mean()-X|
|17|V82|tBodyAccJerk-mean()-Y|
|18|V83|tBodyAccJerk-mean()-Z|
|19|V84|tBodyAccJerk-std()-X|
|20|V85|tBodyAccJerk-std()-Y|
|21|V86|tBodyAccJerk-std()-Z|
|22|V121|tBodyGyro-mean()-X|
|23|V122|tBodyGyro-mean()-Y|
|24|V123|tBodyGyro-mean()-Z|
|25|V124|tBodyGyro-std()-X|
|26|V125|tBodyGyro-std()-Y|
|27|V126|tBodyGyro-std()-Z|
|28|V161|tBodyGyroJerk-mean()-X|
|29|V162|tBodyGyroJerk-mean()-Y|
|30|V163|tBodyGyroJerk-mean()-Z|
|31|V164|tBodyGyroJerk-std()-X|
|32|V165|tBodyGyroJerk-std()-Y|
|33|V166|tBodyGyroJerk-std()-Z|
|34|V201|tBodyAccMag-mean()|
|35|V202|tBodyAccMag-std()|
|36|V214|tGravityAccMag-mean()|
|37|V215|tGravityAccMag-std()|
|38|V227|tBodyAccJerkMag-mean()|
|39|V228|tBodyAccJerkMag-std()|
|40|V240|tBodyGyroMag-mean()|
|41|V241|tBodyGyroMag-std()|
|42|V253|tBodyGyroJerkMag-mean()|
|43|V254|tBodyGyroJerkMag-std()|
|44|V266|fBodyAcc-mean()-X|
|45|V267|fBodyAcc-mean()-Y|
|46|V268|fBodyAcc-mean()-Z|
|47|V269|fBodyAcc-std()-X|
|48|V270|fBodyAcc-std()-Y|
|49|V271|fBodyAcc-std()-Z|
|50|V345|fBodyAccJerk-mean()-X|
|51|V346|fBodyAccJerk-mean()-Y|
|52|V347|fBodyAccJerk-mean()-Z|
|53|V348|fBodyAccJerk-std()-X|
|54|V349|fBodyAccJerk-std()-Y|
|55|V350|fBodyAccJerk-std()-Z|
|56|V424|fBodyGyro-mean()-X|
|57|V425|fBodyGyro-mean()-Y|
|58|V426|fBodyGyro-mean()-Z|
|59|V427|fBodyGyro-std()-X|
|60|V428|fBodyGyro-std()-Y|
|61|V429|fBodyGyro-std()-Z|
|62|V503|fBodyAccMag-mean()|
|63|V504|fBodyAccMag-std()|
|64|V516|fBodyBodyAccJerkMag-mean()|
|65|V517|fBodyBodyAccJerkMag-std()|
|66|V529|fBodyBodyGyroMag-mean()|
|67|V530|fBodyBodyGyroMag-std()|
|68|V542|fBodyBodyGyroJerkMag-mean()|
|69|V543|fBodyBodyGyroJerkMag-std()|
|70|body_acc_x_mean|mean X-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|71|body_acc_x_std|std dev of X-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|72|body_acc_y_mean|mean Y-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|73|body_acc_y_std|std dev of Y-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|74|body_acc_z_mean|mean Z-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|75|body_acc_z_std|std dev of Z-axis body acceleration signal obtained by subtracting the gravity from the total acceleration (standard gravity units g)|
|76|body_gyro_x_mean|mean X-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|77|body_gyro_x_std|std dev of X-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|78|body_gyro_y_mean|mean Y-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|79|body_gyro_y_std|std dev of Y-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|80|body_gyro_z_mean|mean Z-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|81|body_gyro_z_std|std dev of Z-axis angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.|
|82|total_acc_x_mean|mean acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'|
|83|total_acc_x_std|std dev of acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'|
|84|total_acc_y_mean|mean acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'|
|85|total_acc_y_std|std dev of acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'|
|86|total_acc_z_mean|mean acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'|
|87|total_acc_z_std|std dev of acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'|
|88|tag|indicates whether row is from "test" or "train" datasets|
