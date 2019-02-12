# Details of Clean Dataset creation using run_analysis.R

## variables(features) in the data set:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals
were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


         
## Variable Description

###(Total number of features/variables present in the Tidy Dataset (IndividualAveragesDataset) = 68.)

#### 1						  Subject
                The Id of the person who were observed . It ranges from [1,30]
                
#### 2						  Activity
                Denotes activities done by subject . It belong to set{WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,                 LAYING}
                
#### 3						  tBodyAcc-mean()-X
                Mean of body acceleration signals in X direction. SI unit metres per second per second (ms^-2)

#### 4						  tBodyAcc-std()-X
                Standard Deviation of body acceleration signals in X direction. SI unit metres per second per second (ms^-2)

#### 5						  tBodyAcc-mean()-Y
                Mean of body acceleration signals in Y direction. SI unit metres per second per second (ms^-2)

#### 6						  tBodyAcc-std()-Y
                 Standard Deviation of body acceleration signals in Y direction.SI unit metres per second per second (ms^-2)

#### 7						  tBodyAcc-mean()-Z
                 Mean of body acceleration signals in Z direction. SI unit metres per second per second (ms^-2)

#### 8						  tBodyAcc-std()-Z
                 Standard Deviation of body acceleration signals in X direction. SI unit metres per second per second (ms^-2)

#### 9						  tGravityAcc-mean()-X
                 Mean of gravity acceleration signals in X direction. SI unit metres per second per second (ms^-2)

#### 10						tGravityAcc-std()-X
                 Standard Deviation of gravity acceleration signals in X direction. SI unit metres per second per second (ms^-2) 

#### 11						tGravityAcc-mean()-Y
                 Mean of gravity acceleration signals in Y direction. SI unit metres per second per second (ms^-2)   

#### 12						tGravityAcc-std()-Y
                 Standard Deviation of gravity acceleration signals in Y direction. SI unit metres per second per second (ms^-2)

#### 13						tGravityAcc-mean()-Z
                 Mean of gravity acceleration signals in Z direction. SI unit metres per second per second (ms^-2) 

#### 14						tGravityAcc-std()-Z
                 Standard Deviation of gravity acceleration signals in Z direction. SI unit metres per second per second (ms^-2) 

#### 15						tBodyAccJerk-mean()-X
                  Mean of Body acceleration jerk(rate of change of acceleration) in X axial. SI unit metres per second per second 
                  (ms^-3) 

#### 16						tBodyAccJerk-std()-X
                  Standard Deviation of Body acceleration jerk(rate of change of acceleration) in X axial. SI unit metres per second per 
                  second (ms^-3)

#### 17						tBodyAccJerk-mean()-Y
                  Mean of Body acceleration jerk(rate of change of acceleration) in Y axial. SI unit metres per second per second 
                  (ms^-3)

#### 18						tBodyAccJerk-std()-Y
                  Standard Deviation of Body acceleration jerk(rate of change of acceleration) in Y axial. SI unit metres per second per 
                  second (ms^-3)

#### 19						tBodyAccJerk-mean()-Z
                  Mean of Body acceleration jerk(rate of change of acceleration) in Z axial. SI unit metres per second per second 
                  (ms^-3)

#### 20						tBodyAccJerk-std()-Z
                  Standard Deviation of Body acceleration jerk(rate of change of acceleration) in Z axial. SI unit metres per second per 
                  second per second(ms^-3)

#### 21						tBodyGyro-mean()-X
                  Mean of Body Gyroscope in X axial. SI unit degrees per second (°/s)

#### 22						tBodyGyro-std()-X
                  Standard Deviation of Body Gyroscope in X axial. SI unit degrees per second (°/s)

#### 23						tBodyGyro-mean()-Y
                  Mean of Body Gyroscope in Y axial. SI unit degrees per second (°/s)

#### 24						tBodyGyro-std()-Y
                  Standard Deviation of Body Gyroscope in Y axial. SI unit degrees per second (°/s)

#### 25						tBodyGyro-mean()-Z
                  Mean of Body Gyroscope in Z axial. SI unit degrees per second (°/s)

#### 26						tBodyGyro-std()-Z
                  Standard Deviation of Body Gyroscope in Z axial. SI unit degrees per second (°/s)

#### 27						tBodyGyroJerk-mean()-X
                  Mean of Body Gyroscope jerk(rate of change of acceleration) in X axial. SI unit degrees per second per second (°/s^2)

#### 28						tBodyGyroJerk-std()-X
                  Standard Deviation of Body Gyroscope in Z axial. SI unit degrees per second per second (°/s^2)

#### 29						tBodyGyroJerk-mean()-Y
                  Mean of Body Gyroscope in Z axial. SI unit degrees per second per second (°/s^2)

#### 30						tBodyGyroJerk-std()-Y
                  Standard Deviation of Body Gyroscope in Z axial. SI unit degrees per second per second (°/s^2)

#### 31						tBodyGyroJerk-mean()-Z
                  Mean of Body Gyroscope in Z axial. SI unit degrees per second per second (°/s^2)

#### 32						tBodyGyroJerk-std()-Z
                  Standard Deviation of Body Gyroscope in Z axial. SI unit degrees per second per second (°/s^2)  

#### 33						tBodyAccMag-mean()
                  Mean of Body Acceleration Magnitude . SI unit degrees per second (ms^-2)

#### 34						tBodyAccMag-std()
                  Standard Deviation of Body Acceleration Magnitude . SI unit degrees per second (ms^-2)  

#### 35						tGravityAccMag-mean()
                  Mean of Gracity Acceleration Magnitude . SI unit degrees per second (ms^-2)

#### 36						tGravityAccMag-std()
                  Standard Deviation of Gravity Acceleration Magnitude . SI unit degrees per second (ms^-2)

#### 37						tBodyAccJerkMag-mean()
                  Mean of Body Acceleration Jerk Magnitude . SI unit degrees per second per second (°/s^2)

#### 38						tBodyAccJerkMag-std()
                  Standard Deviation of Body Acceleration Jerk Magnitude .SI unit degrees per second per second (°/s^2)

#### 39						tBodyGyroMag-mean()
                  Mean of Body Acceleration Jerk Magnitude . SI unit degrees per second per second (°/s^2)

#### 40						tBodyGyroMag-std()
                  Standard Deviation of Body Gyroscopic Magnitude . SI unit degrees per second per second (°/s^2)

#### 41						tBodyGyroJerkMag-mean()
                  Mean of Body Gyroscopic Jerk Magnitude .SI unit degrees per second per second (°/s^2)

#### 42						tBodyGyroJerkMag-std()
                  Standard Deviation of Body Gyroscopic Jerk Magnitude .SI unit degrees per second per second (°/s^2)

#### 43						fBodyAcc-mean()-X
                  frequency domain signals. Mean of body acceleration signals in X direction. SI unit metres hertz square (mHz^2)

#### 44						fBodyAcc-std()-X
                  frequency domain signals. Mean of body acceleration signals in X direction. SI unit metres hertz square (mHz^2)  

#### 45						fBodyAcc-mean()-Y
                 frequency domain signals.  Mean of body acceleration signals in Y direction. SI unit metres hertz square (mHz^2)

#### 46						fBodyAcc-std()-Y
                  frequency domain signals. Mean of body acceleration signals in Y direction. SI unit metres hertz square (mHz^2)

#### 47						fBodyAcc-mean()-Z
                 frequency domain signals.  Mean of body acceleration signals in Z direction. SI unit metres hertz square (mHz^2)  

#### 48						fBodyAcc-std()-Z
                  frequency domain signals. Mean of body acceleration signals in Z direction. SI unit metres hertz square (mHz^2)       
                  
#### 49						fBodyAccJerk-mean()-X
                  frequency domain signals. Mean of body acceleration jerk in X direction axial. SI unit metres hertz cube (mHz^3)

#### 50						fBodyAccJerk-std()-X
                  frequency domain signals. Mean of body acceleration jerk in X direction axial. SI unit metres hertz cube (mHz^3)

#### 51						fBodyAccJerk-mean()-Y
                 frequency domain signals.  Mean of body acceleration jerk in Y direction axial. SI unit metres hertz cube (mHz^3)

#### 52						fBodyAccJerk-std()-Y
                  frequency domain signals. Mean of body acceleration jerk in Y direction axial. SI unit metres hertz cube (mHz^3)

#### 53						fBodyAccJerk-mean()-Z
                  frequency domain signals. Mean of body acceleration jerk in Z direction axial. SI unit metres hertz cube (mHz^3)

#### 54						fBodyAccJerk-std()-Z
                  frequency domain signals. Mean of body acceleration jerk in Z direction axial. SI unit metres hertz cube (mHz^3)

#### 55						fBodyGyro-mean()-X
                  frequency domain signals. Mean of Body Gyroscope in X axial. SI unit degrees hertz (°Hz)

#### 56						fBodyGyro-std()-X
                  frequency domain signals. Mean of Body Gyroscope in X axial. SI unit degrees hertz (°Hz)    

#### 57						fBodyGyro-mean()-Y
                  frequency domain signals. Mean of Body Gyroscope in Y axial. SI unit degrees hertz (°Hz)

#### 58						fBodyGyro-std()-Y
                  frequency domain signals. Mean of Body Gyroscope in Y axial. SI unit degrees hertz (°Hz)

#### 59						fBodyGyro-mean()-Z
                  frequency domain signals. Mean of Body Gyroscope in Z axial. SI unit degrees hertz (°Hz)

#### 60						fBodyGyro-std()-Z
                  frequency domain signals. Mean of Body Gyroscope in Z axial. SI unit degrees hertz (°Hz)

#### 61						fBodyAccMag-mean()
                  frequency domain signals. Mean of Body Acceleration Magnitude . SI unit metres hertz square (mHz^2)

#### 62						fBodyAccMag-std()
                  frequency domain signals. Mean of Body Acceleration Magnitude . SI unit metres hertz square (mHz^2)

#### 63						fBodyBodyAccJerkMag-mean()
                  frequency domain signals. Mean. SI unit metres hertz cube (mHz^3)

#### 64						fBodyBodyAccJerkMag-std()
                 frequency domain signals. Standard Deviation. SI unit metres hertz cube (mHz^3)

#### 65						fBodyBodyGyroMag-mean()
                  frequency domain signals. Mean. SI unit degrees hertz square (°Hz^2)

#### 66						fBodyBodyGyroMag-std()
                 frequency domain signals. Standard Deviation. SI unit degrees hertz square (°Hz^2)   

#### 67						fBodyBodyGyroJerkMag-mean()
                 frequency domain signals. Mean. SI unit degrees hertz cube (°Hz^3)   

#### 68						fBodyBodyGyroJerkMag-std()
                 frequency domain signals. Standard Deviation. SI unit degrees hertz cube (°Hz^3) 
