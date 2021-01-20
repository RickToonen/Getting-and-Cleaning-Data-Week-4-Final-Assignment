CodeBook.md for Final assignment Module 3 Week 4
-----------------------------
The data in this file was obtained by tidying data files that were provided for this assignment. The original data can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data was gathered from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Dataset
-----------------------------
The dataset includes one table, finaldataset.txt.
The file can be read into R with the read.table function, including the header=TRUE argument to set the first row as headers.

Variables
activity - One of the six activities a subject performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject - An identifier of the subject who carried out the experiment: 1-30

feature - Set of 66 variables that were estimated from the signals as described above: 
 Time-BodyAccelartion-mean-X               Time-BodyAccelartion-mean-Y               Time-BodyAccelartion-mean-Z              
 Time-BodyAccelartion-std-X                Time-BodyAccelartion-std-Y                Time-BodyAccelartion-std-Z               
 Time-GravityAccelartion-mean-X            Time-GravityAccelartion-mean-Y            Time-GravityAccelartion-mean-Z           
 Time-GravityAccelartion-std-X             Time-GravityAccelartion-std-Y             Time-GravityAccelartion-std-Z            
 Time-BodyAccelartionJerk-mean-X           Time-BodyAccelartionJerk-mean-Y           Time-BodyAccelartionJerk-mean-Z          
 Time-BodyAccelartionJerk-std-X            Time-BodyAccelartionJerk-std-Y            Time-BodyAccelartionJerk-std-Z           
 Time-BodyGyroscope-mean-X                 Time-BodyGyroscope-mean-Y                 Time-BodyGyroscope-mean-Z                
 Time-BodyGyroscope-std-X                  Time-BodyGyroscope-std-Y                  Time-BodyGyroscope-std-Z                 
 Time-BodyGyroscopeJerk-mean-X             Time-BodyGyroscopeJerk-mean-Y             Time-BodyGyroscopeJerk-mean-Z            
 Time-BodyGyroscopeJerk-std-X              Time-BodyGyroscopeJerk-std-Y              Time-BodyGyroscopeJerk-std-Z             
 Time-BodyAccelartionMag-mean              Time-BodyAccelartionMag-std               Time-GravityAccelartionMag-mean          
 Time-GravityAccelartionMag-std            Time-BodyAccelartionJerkMag-mean          Time-BodyAccelartionJerkMag-std          
 Time-BodyGyroscopeMag-mean                Time-BodyGyroscopeMag-std                 Time-BodyGyroscopeJerkMag-mean           
 Time-BodyGyroscopeJerkMag-std             Frequency-BodyAccelartion-mean-X          Frequency-BodyAccelartion-mean-Y         
 Frequency-BodyAccelartion-mean-Z          Frequency-BodyAccelartion-std-X           Frequency-BodyAccelartion-std-Y          
 Frequency-BodyAccelartion-std-Z           Frequency-BodyAccelartionJerk-mean-X      Frequency-BodyAccelartionJerk-mean-Y     
 Frequency-BodyAccelartionJerk-mean-Z      Frequency-BodyAccelartionJerk-std-X       Frequency-BodyAccelartionJerk-std-Y      
 Frequency-BodyAccelartionJerk-std-Z       Frequency-BodyGyroscope-mean-X            Frequency-BodyGyroscope-mean-Y           
 Frequency-BodyGyroscope-mean-Z            Frequency-BodyGyroscope-std-X             Frequency-BodyGyroscope-std-Y            
 Frequency-BodyGyroscope-std-Z             Frequency-BodyAccelartionMag-mean         Frequency-BodyAccelartionMag-std         
 Frequency-BodyBodyAccelartionJerkMag-mean Frequency-BodyBodyAccelartionJerkMag-std  Frequency-BodyBodyGyroscopeMag-mean      
 Frequency-BodyBodyGyroscopeMag-std        Frequency-BodyBodyGyroscopeJerkMag-mean   Frequency-BodyBodyGyroscopeJerkMag-std 
 
 average - the average of each variable for each activity and each subject.

