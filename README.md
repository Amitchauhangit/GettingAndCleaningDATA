# GettingAndCleaningDATA

##step 1
Read dataset of train and test from text files using read.table()

##step 2
merge the different datasets according to rows and columns into a main data set named wholeDataset

##step 3
Get the list of features into a variable called allFeatures from file "features.txt"

##step 4
Get the target features i.e. measures of mean and standard deviation from the features list.

##step 5
Passsing index of target features into wholeDataSet to extract only those columns or features which are passed. Here two more features are defined name "Subject" and "Activity". and create a targetDataSet named data frame.

##step 6
Now extract the activity labels from file "activity_labels.txt" and create a factor variable of it named activity to correspond 1:6 integer to activity labels.

##step 7
Now convert the "Activity" feature in targetDataset into descriptive names with the use of activity factor.

##step 8
Now create distinctSubjects dataFrame to store splited targetDataSet on the basis of "Subject" id ranging from 1 to 30.

##step 9
Then create distinctSubjectsAndActivityto further store spliting dataset according to the activity variable and excluding subject and activity variables from resulting data frame .

##step 10
meansColWise to store average for each variable (column) in the distinctSubjectsAndActivities dataset.


