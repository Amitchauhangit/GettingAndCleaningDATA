setwd("C:/Users/Dragon/Desktop/UCI HAR Dataset/") #setting Location of DataSet directory

#reading train and test datasets
#train datasets
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
subject_train<-read.table("./train/subject_train.txt")
#test datasets
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
subject_test<-read.table("./test/subject_test.txt")

#allFeatures contain all the names for the variables mentioned in the dataset.
allFeatures<-read.table("./features.txt")

#Merging the training and the test sets to create one data set named wholeDataSet.
wholeDataSet<-rbind(cbind(subject_train,ytrain,xtrain),cbind(subject_test,ytest,xtest))


#Getting the features indices which represent mean or standard deviation measurements .
meanFeaturesIndex<-grep(pattern="mean[(][)]",allFeatures[[2]])
stdFeaturesIndex<-grep(pattern="std[(][)]",allFeatures[[2]])


targetFeaturesIndexMatrix<-rbind(meanFeaturesIndex,stdFeaturesIndex)
targetFeaturesIndex<-as.vector(targetFeaturesIndexMatrix,mode="numeric")
#targetFeaturesIndex represent the indices of the features in the dataset for mean and std measurements.

features<-allFeatures[[2]][targetFeaturesIndex]
features<-as.character(features)
#features is the descriptive names list for the measurements mean and std for target data set. Total number of targeted features is 66.



#Extracting only the measurements on the mean and standard deviation(std()) for each measurements 
#and storing in data frame named targetDataSet .
targetDataSet<-wholeDataSet[,c(1,2,targetFeaturesIndex+2)]
names(targetDataSet)<-c("Subject","Activity",features)

targetDataSet<-targetDataSet[order(targetDataSet$Subject,targetDataSet$Activity),]
#ordering the targetDataSet according to subject and then according to activity in ascending order.

activityLabels<-read.table("./activity_labels.txt")
activity<-factor(x = activityLabels[[2]],levels = activityLabels[[2]])
#getting activity names equivalent to there id in 1 to 6 and creating a factor named activity

#Using descriptive activity names to name the activities in the data set.
targetDataSet$Activity<-activity[targetDataSet$Activity]

#From the above data set created (targetDataSet),
#creating a second, independent tidy data set named targetAverageDataSet with the average of each variable for each activity and each subject .

distinctSubjects<-split(targetDataSet,targetDataSet$Subject)
#spliting targetDataSet according to subject variable. 
distinctSubjectsAndActivities<-lapply(distinctSubjects,function(x){ split(x[,c(-1,-2)],x$Activity) })
#Further spliting dataset according to the activity variable and excluding subject and activity variables from resulting data frame .

meansColWise<-lapply(distinctSubjectsAndActivities,function(x) lapply(x,colMeans))
#Hence Calculating average for each variable (column) in the distinctSubjectsAndActivities dataset.
                     
tempFrame<-data.frame(Subject=rep(names(distinctSubjectsAndActivities),each=6),Activity=rep(names(distinctSubjectsAndActivities[[1]]),times=30))
#creating a temprorary data frame , holding two variables named Subject and Activity (as these two were excluded earlier in line 56).

tempMeanTogether<-data.frame(lapply(meansColWise,unclass)) #dim(temp) = (66, 180)
#Gathering the variables average into a data frame. dimension(tempMeanTogether) = (66,180)
                     
targetAverageDataSet<-cbind(tempFrame,t(tempMeanTogether))
#final step to combine the tempFrame and tempMeanTogether into a single data frame.
#targetAverageDataSet is the asked dataset.  

write.table(targetDataSet,file="tidyDataSet.txt",row.names = F) #writing dataset targetDataSet 
write.table(targetAverageDataSet,file="IndividualAveragesDataSet.txt",row.names = F) #writing dataset targetAverageDataSet
#end of script
