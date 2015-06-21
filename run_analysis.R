
#Load the different tables into R

xtest<-read.table("./projdata/X_test.txt")
xtrain<-read.table("./projdata/X_train.txt")
subtest<-read.table("./projdata/subject_test.txt")
subtrain<-read.table("./projdata/subject_train.txt")
ytest<-read.table("./projdata/Y_test.txt")
ytrain<-read.table("./projdata/Y_train.txt")

#STEP 1

#Join the measurements, subjects and activities of the test and the train sets

test<-cbind(subtest,ytest,xtest)
train<-cbind(subtrain,ytrain,xtrain)

#Join the complete train and test data

data<-rbind(test,train)

#STEP 2

#Extract the columns with mean and standard deviation measurements, as well as subjects and activities

subdata<-data[,c(1,2,3,4,5,6,7,8,43,44,45,46,47,48,83,84,85,86,87,88,123,124,
                  125,126,127,128,163,164,165,166,167,168,203,204,216,217,229,
                  230,242,243,255,256,268,269,270,271,272,273,347,348,349,350,
                  351,352,426,427,428,429,430,431,505,506,518,519,531,532,544,
                  545)]

#STEP 3

#Apply descriptive activity names to name the activities in the data set

subdata[ ,2] <- as.character(factor(subdata[ ,2], labels=c("WALKING",
                                                           "WALKING_UPSTAIRS",
                                                           "WALKING_DOWNSTAIRS",
                                                           "SITTING",
                                                           "STANDING",
                                                           "LAYING")))
#STEP 4

#Label the data set with descriptive variable names. 

names(subdata)<-c("subject","activity","tBodyAcc_mean_X","tBodyAcc_mean_Y",
                  "tBodyAcc_mean_Z","tBodyAcc_std_X","tBodyAcc_std_Y",
                  "tBodyAcc_std_Z","tGravityAcc_mean_X","tGravityAcc_mean_Y",
                  "tGravityAcc_mean_Z","tGravityAcc_std_X","tGravityAcc_std_Y",
                  "tGravityAcc_std_Z","tBodyAccJerk_mean_X",
                  "tBodyAccJerk_mean_Y","tBodyAccJerk_mean_Z",
                  "tBodyAccJerk_std_X","tBodyAccJerk_std_Y",
                  "tBodyAccJerk_std_Z","tBodyGyro_mean_X","tBodyGyro_mean_Y",
                  "tBodyGyro_mean_Z","tBodyGyro_std_X","tBodyGyro_std_Y",
                  "tBodyGyro_std_Z","tBodyGyroJerk_mean_X",
                  "tBodyGyroJerk_mean_Y","tBodyGyroJerk_mean_Z",
                  "tBodyGyroJerk_std_X","tBodyGyroJerk_std_Y",
                  "tBodyGyroJerk_std_Z","tBodyAccMag_mean",
                  "tBodyAccMag_std","tGravityAccMag_mean","tGravityAccMag_std",
                  "tBodyAccJerkMag_mean","tBodyAccJerkMag_std",
                  "tBodyGyroMag_mean","tBodyGyroMag_std",
                  "tBodyGyroJerkMag_mean","tBodyGyroJerkMag_std",
                  "fBodyAcc_mean_X","fBodyAcc_mean_Y","fBodyAcc_mean_Z",
                  "fBodyAcc_std_X","fBodyAcc_std_Y","fBodyAcc_std_Z",
                  "fBodyAccJerk_mean_X","fBodyAccJerk_mean_Y",
                  "fBodyAccJerk_mean_Z","fBodyAccJerk_std_X",
                  "fBodyAccJerk_std_Y","fBodyAccJerk_std_Z","fBodyGyro_mean_X",
                  "fBodyGyro_mean_Y","fBodyGyro_mean_Z","fBodyGyro_std_X",
                  "fBodyGyro_std_Y","fBodyGyro_std_Z","fBodyAccMag_mean",
                  "fBodyAccMag_std","fBodyAccJerkMag_mean",
                  "fBodyAccJerkMag_std","fBodyGyroMag_mean",
                  "fBodyGyroMag_std","fBodyGyroJerkMag_mean",
                  "fBodyGyroJerkMag_std")

#STEP 5

#Transform the selected and labeled data into a dataframe for summarizing

subdataframe<-as.data.frame(subdata)

#Load dplyr for grouping and summarizing

library(dplyr)

#Create the grouped dataframe

groupdata<-group_by(subdataframe,subject,activity)

#Summarize each variable for each subject and activity

AVEdata<-summarise(groupdata,
          AVEtBodyAcc_mean_X=mean(tBodyAcc_mean_X),
          AVEtBodyAcc_mean_Y=mean(tBodyAcc_mean_Y),
          AVEtBodyAcc_mean_Z=mean(tBodyAcc_mean_Z),
          AVEtBodyAcc_std_X=mean(tBodyAcc_std_X),
          AVEtBodyAcc_std_Y=mean(tBodyAcc_std_Y),
          AVEtBodyAcc_std_Z=mean(tBodyAcc_std_Z),
          AVEtGravityAcc_mean_X=mean(tGravityAcc_mean_X),
          AVEtGravityAcc_mean_Y=mean(tGravityAcc_mean_Y),
          AVEtGravityAcc_mean_Z=mean(tGravityAcc_mean_Z),
          AVEtGravityAcc_std_X=mean(tGravityAcc_std_X),
          AVEtGravityAcc_std_Y=mean(tGravityAcc_std_Y),
          AVEtGravityAcc_std_Z=mean(tGravityAcc_std_Z),
          AVEtBodyAccJerk_mean_X=mean(tBodyAccJerk_mean_X),
          AVEtBodyAccJerk_mean_Y=mean(tBodyAccJerk_mean_Y),
          AVEtBodyAccJerk_mean_Z=mean(tBodyAccJerk_mean_Z),
          AVEtBodyAccJerk_std_X=mean(tBodyAccJerk_std_X),
          AVEtBodyAccJerk_std_Y=mean(tBodyAccJerk_std_Y),
          AVEtBodyAccJerk_std_Z=mean(tBodyAccJerk_std_Z),
          AVEtBodyGyro_mean_X=mean(tBodyGyro_mean_X),
          AVEtBodyGyro_mean_Y=mean(tBodyGyro_mean_Y),
          AVEtBodyGyro_mean_Z=mean(tBodyGyro_mean_Z),
          AVEtBodyGyro_std_X=mean(tBodyGyro_std_X),
          AVEtBodyGyro_std_Y=mean(tBodyGyro_std_Y),
          AVEtBodyGyro_std_Z=mean(tBodyGyro_std_Z),
          AVEtBodyGyroJerk_mean_X=mean(tBodyGyroJerk_mean_X),
          AVEtBodyGyroJerk_mean_Y=mean(tBodyGyroJerk_mean_Y),
          AVEtBodyGyroJerk_mean_Z=mean(tBodyGyroJerk_mean_Z),
          AVEtBodyGyroJerk_std_X=mean(tBodyGyroJerk_std_X),
          AVEtBodyGyroJerk_std_Y=mean(tBodyGyroJerk_std_Y),
          AVEtBodyGyroJerk_std_Z=mean(tBodyGyroJerk_std_Z),
          AVEtBodyAccMag_mean=mean(tBodyAccMag_mean),
          AVEtBodyAccMag_std=mean(tBodyAccMag_std),
          AVEtGravityAccMag_mean=mean(tGravityAccMag_mean),
          AVEtGravityAccMag_std=mean(tGravityAccMag_std),
          AVEtBodyAccJerkMag_mean=mean(tBodyAccJerkMag_mean),
          AVEtBodyAccJerkMag_std=mean(tBodyAccJerkMag_std),
          AVEtBodyGyroMag_mean=mean(tBodyGyroMag_mean),
          AVEtBodyGyroMag_std=mean(tBodyGyroMag_std),
          AVEtBodyGyroJerkMag_mean=mean(tBodyGyroJerkMag_mean),
          AVEtBodyGyroJerkMag_std=mean(tBodyGyroJerkMag_std),
          AVEfBodyAcc_mean_X=mean(fBodyAcc_mean_X),
          AVEfBodyAcc_mean_Y=mean(fBodyAcc_mean_Y),
          AVEfBodyAcc_mean_Z=mean(fBodyAcc_mean_Z),
          AVEfBodyAcc_std_X=mean(fBodyAcc_std_X),
          AVEfBodyAcc_std_Y=mean(fBodyAcc_std_Y),
          AVEfBodyAcc_std_Z=mean(fBodyAcc_std_Z),
          AVEfBodyAccJerk_mean_X=mean(fBodyAccJerk_mean_X),
          AVEfBodyAccJerk_mean_Y=mean(fBodyAccJerk_mean_Y),
          AVEfBodyAccJerk_mean_Z=mean(fBodyAccJerk_mean_Z),
          AVEfBodyAccJerk_std_X=mean(fBodyAccJerk_std_X),
          AVEfBodyAccJerk_std_Y=mean(fBodyAccJerk_std_Y),
          AVEfBodyAccJerk_std_Z=mean(fBodyAccJerk_std_Z),
          AVEfBodyGyro_mean_X=mean(fBodyGyro_mean_X),
          AVEfBodyGyro_mean_Y=mean(fBodyGyro_mean_Y),
          AVEfBodyGyro_mean_Z=mean(fBodyGyro_mean_Z),
          AVEfBodyGyro_std_X=mean(fBodyGyro_std_X),
          AVEfBodyGyro_std_Y=mean(fBodyGyro_std_Y),
          AVEfBodyGyro_std_Z=mean(fBodyGyro_std_Z),
          AVEfBodyAccMag_mean=mean(fBodyAccMag_mean),
          AVEfBodyAccMag_std=mean(fBodyAccMag_std),
          AVEfBodyAccJerkMag_mean=mean(fBodyAccJerkMag_mean),
          AVEfBodyAccJerkMag_std=mean(fBodyAccJerkMag_std),
          AVEfBodyGyroMag_mean=mean(fBodyGyroMag_mean),
          AVEfBodyGyroMag_std=mean(fBodyGyroMag_std),
          AVEfBodyGyroJerkMag_mean=mean(fBodyGyroJerkMag_mean),
          AVEfBodyGyroJerkMag_std=mean(fBodyGyroJerkMag_std))

#Export the dataframe into a text file

write.table(AVEdata,file="./projdata/AVEdata.txt",row.name=FALSE)

