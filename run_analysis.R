
#General
activity_lables <- read.table("activity_labels.txt")
activity_lables <- activity_lables %>% rename(activitynumber=V1,activity=V2) #rename variables to descriptive names

features <- read.table("features.txt")

#Test set
y_test <- read.table("y_test.txt")
y_test <- y_test %>% rename(activitynumber=V1) %>% left_join(activity_lables) #rename variables to descriptive names, joins activity label names

X_test <- read.table("X_test.txt")
names(X_test) <- features[,"V2"] #rename the variables of X_test to the respective names of the features
X_test2 <- X_test %>% select(grep("mean\\()|std\\()",names(X_test),value=TRUE)) #selects only the features calculating a mean of std
names(X_test2) <- sub("^t","Time-",names(X_test2)) #rename the variable to make it more descriptive
names(X_test2) <- sub("\\()","",names(X_test2)) #rename the variable to make it more descriptive
names(X_test2) <- sub("^f","Frequency-",names(X_test2)) #rename the variable to make it more descriptive
names(X_test2) <- sub("Acc","Accelartion",names(X_test2)) #rename the variable to make it more descriptive
names(X_test2) <- sub("Gyro","Gyroscope",names(X_test2)) #rename the variable to make it more descriptive

subject_test <- read.table("subject_test.txt")
subject_test <- subject_test %>% rename(subject=V1) #rename variables to descriptive names

totaltest <- cbind(y_test,subject_test,X_test2) #joins the y_test, X_test and subject_test tables together
melttotaltest <- melt(totaltest,id=c("activitynumber","activity","subject"),measure.vars=c(names(X_test2))) #reshapes the totaltest file so that features becomes a variables
melttotaltest <- melttotaltest %>% select(activity,subject,feature=variable,value) #selects relevant variables to keep and rename to make it descriptive


#Training set
y_train <- read.table("y_train.txt")
y_train <- y_train %>% select(activitynumber=V1) %>% left_join(activity_lables) #rename variables to descriptive names

X_train <- read.table("X_train.txt")
names(X_train) <- features[,"V2"] #rename the variables of X_test to the respective names of the features
X_train2 <- X_train %>% select(grep("mean\\()|std\\()",names(X_train),value=TRUE)) #selects only the features calculating a mean of std
names(X_train2) <- sub("^t","Time-",names(X_train2)) #rename the variable to make it more descriptive
names(X_train2) <- sub("\\()","",names(X_train2)) #rename the variable to make it more descriptive
names(X_train2) <- sub("^f","Frequency-",names(X_train2)) #rename the variable to make it more descriptive
names(X_train2) <- sub("Acc","Accelartion",names(X_train2)) #rename the variable to make it more descriptive
names(X_train2) <- sub("Gyro","Gyroscope",names(X_train2)) #rename the variable to make it more descriptive

subject_train <- read.table("subject_train.txt") 
subject_train <- subject_train %>% select(subject=V1) #rename variables to descriptive names

totaltrain <- cbind(y_train,subject_train,X_train2) #joins the y_test, X_test and subject_test tables together
melttotaltrain <- melt(totaltrain,id=c("activitynumber","activity","subject"),measure.vars=c(names(X_train2))) #reshapes the totaltrain file so that features becomes a variables
melttotaltrain <- melttotaltrain %>% select(activity,subject,feature=variable,value) #selects relevant variables to keep and rename to make it descriptive


#Merging two data sets
totaldataset <- rbind(melttotaltest,melttotaltrain) 

#Final data set
finaldataset <- ddply(totaldataset, colnames(totaldataset)[1:3],summarize,average=mean(value)) #calculates the average of each variable for each activity and each subject.
write.table(finaldataset,file="finaldataset.txt",row.names=FALSE) 


