README.md for Final assignment Module 3 Week 4

The analysis was performed on the following datafiles, which were provided with the assignment. More information about original data can be found in the CodeBook.md.
- activity_lables.txt
- features.txt
- y_test.txt
- X_test.txt
- subject_test.txt"
- y_train.txt
- X_train.txt
- subject_train.txt

The script run_analysis.R was used to read the tables into R and combine and tidy them to a new tidy datafile.

First, I read in the activity_labels file and rename the variables to descriptive names: activitynumber = V1 and activity = V2

Second, I read in the file features.txt

Then, I read in file y_test.txt and renamed the variable activitynumber=V1. Based on the column activitynumber, the table from activity_lables was joined on y_test to combine the activity number with the activity name.

The columns/variables from the file X_test, containing all the measurement values, were renamed based on the file features.txt, which contained the list of names of the features (V1 - V561 to ebriviated names from the feature file)
For purpose of this exercise, only the variables which calculate the mean or standard deviation of one the measurements were selected, filtering the features names on "mean()" and "std()"
To make the variables more descriptive, some parts of the names of the features were changed:
- prefix "t" and "f" changed to "Time" and "Frequency"
- abbreviations "Acc" and "Gyro" changed to "Accelaration" and "Gyroscope"
- the brackets "()" removed to make the feature name more readable 

Then I read in the subject_test.txt file and renamed the V1 variable to "subject" to describe its content.

After reading in and renaming the files, I combined y_test, subject_test and X_test to one file with the cbind function.

Then I reshaped the data with the melt function to get the names of features into one variable column called "features" instead of seperate columns for each feature. The way I interpreted the data, I see feature as one variable with the measurements as values. 
To make the table more compact and the variables descriptive, I kept only four relevant columns and changed the name of one column from variable to feature.

I performed the exact same process for the training set.

The total table for the test set and training set were then combined into one table with the rbind function.

For purpose of the assignment, I used the total file to construct the final file by calculating the average value of each feature variable with the ddply function






