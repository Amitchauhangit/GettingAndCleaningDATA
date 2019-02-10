setwd("C:/Users/Dragon/Desktop/UCI HAR Dataset/")
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
subject_train<-read.table("./train/subject_train.txt")

xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")
subject_test<-read.table("./test/subject_test.txt")


allFeatures<-read.table("./features.txt")

meanFeaturesIndex<-grep(pattern="mean[(][)]",allFeatures[[2]])
stdFeaturesIndex<-grep(pattern="std[(][)]",allFeatures[[2]])

targetFeaturesIndexMatrix<-rbind(meanFeaturesIndex,stdFeaturesIndex)
targetFeaturesIndex<-as.vector(targetFeaturesIndexMatrix,mode="numeric")
features<-allFeatures[[2]][targetFeaturesIndex]
features<-as.character(features)

activityLabels<-read.table("./activity_labels.txt")
activity<-factor(x = activityLabels[[2]],levels = activityLabels[[2]])

wholeDataSet<-rbind(cbind(subject_train,ytrain,xtrain),cbind(subject_test,ytest,xtest))

targetDataSet<-wholeDataSet[,c(1,2,targetFeaturesIndex+2)]
names(targetDataSet)<-c("Subject","Activity",features)

targetDataSet<-targetDataSet[order(targetDataSet$Subject,targetDataSet$Activity),]
targetDataSet$Activity<-activity[targetDataSet$Activity]

distinctSubjects<-split(targetDataSet,targetDataSet$Subject)

distinctSubjectsAndActivities<-lapply(distinctSubjects,function(x){ split(x[,c(-1,-2)],x$Activity) })

meansColWise<-lapply(distinctSubjectsAndActivities,function(x) lapply(x,colMeans))

tempFrame<-data.frame(Subject=rep(names(distinctSubjectsAndActivities),each=6),Activity=rep(names(distinctSubjectsAndActivities[[1]]),times=30))
tempMean<-data.frame(lapply(meansColWise,unclass)) #dim(temp) = (66, 180)
targetAverageDataSet<-cbind(tempFrame,t(tempMean))


write.table(targetDataSet,file="tidyDataSet.txt",row.names = F) #step 4 dataset
write.table(targetAverageDataSet,file="IndividualAveragesDataSet.txt",row.names = F) # step 5 dataset




