# GettingAndCleaningDATA

The file run_analysis.R and the Samsung data (named "UCI HAR Dataset") is in our working directory

##step 1
Read dataset from train and test directories in "UCI HAR Dataset" directory having text files (X_train.txt, y_train.txt, subject_train.txt, X_test.txt, y_test.txt, subject_test.txt) using read.table()

##step 2
Merge the different datasets according to rows and columns into a main data set named wholeDataset

##step 3
Get the list of features into a variable called allFeatures from file "features.txt"

##step 4
Get the target features i.e. measures of mean and standard deviation (std()) from the features list.

##step 5
Passsing index of target features into wholeDataSet to extract only those columns or features which are passed. Here two more features are defined named "Subject" and "Activity" , and store in a targetDataSet named data frame.

##step 6
Now extract the activity labels from file "activity_labels.txt" and create a factor type variable of it named activity to correspond 1:6 integer to activity labels.

##step 7
Now convert the "Activity" feature in targetDataset into descriptive names with the use of activity factor.

##step 8
Now create distinctSubjects dataFrame to store splited targetDataSet on the basis of "Subject" id ranging from 1 to 30.

##step 9
Then create distinctSubjectsAndActivityto further store spliting dataset according to the activity variable and excluding subject and activity variables from resulting data frame .

##step 10
Create meansColWise to store average for each variable (column) in the distinctSubjectsAndActivities dataset.

##step 11
Creating a temprorary data frame named tempFrame, holding two variables named Subject and Activity (as these two were excluded earlier in step 9).


##step 12
Now gathering the variables average into a data frame named tempMeanTogether. dimension(tempMeanTogether) = (66,180)

##step 13
Final step to combine the tempFrame and transpose(tempMeanTogether) into a single data frame named targetAverageDataSet. dimension(targetAverageDataSet)=(180,68)
Here targetAverageDataSet is the main tidy dataset asked in step 5 of instructions in week 4 Peer-graded Assignment.

##step 14
Writing in the 'IndividualAveragesDataSet.txt' file format using write.table().



