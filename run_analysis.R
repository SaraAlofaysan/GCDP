##---------------------------------------------
## Getting and Cleaning Data / Course Project
##---------------------------------------------


##---------------------------------------------
## Step 1.1 : Reading data files
##---------------------------------------------

## Creating temp file and directory to read the zip data file from the internet link.
TempF<-tempfile()
TempD<-tempfile()
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",TempF)
unzip(TempF, exdir = TempD)
files<-list.files(TempD)
## loading data into varibales
activity_labels<-read.table("activity_labels.txt", col.names=c("id", "activity_label"))
features<-read.table("features.txt",col.names=c("id", "features"))
## Loading Training dataset
xtrain<-read.table("train/X_train.txt")
subtrain<-read.table("train/subject_train.txt")
ytrain<-read.table("train/y_train.txt")
## Loadinf testing dataset
xtest<-read.table("test/X_test.txt")
subtest<-read.table("test/subject_test.txt")
ytest<-read.table("test/y_test.txt")
##----------------  Finish loadinfd data ---------------

##---------------------------------------------
## Step 1.2  : Merging Data and create tidy data
##---------------------------------------------
activity<-rbind(ytrain,ytest)
subject<-rbind(subtrain,subtest)
x<-rbind(xtrain,xtest)
Data<-cbind(x,subject,activity)

##---------------------------------------------
## Step 4  : Labels the data set with descriptive variable names
##---------------------------------------------
## Binding features for column names
colnames(Data)<-features[,2]
colnames(Data)[562]<-"Subject"
colnames(Data)[563]<-"Activity"

##---------------------------------------------
## Step 2  : Extracts only the measurements on the mean and standard deviation
##---------------------------------------------

## extract the data related to the mean and standard deviation of each measurment
Data2<-Data[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543,556:563)]

##---------------------------------------------
## Step 3  :  name the activities with descriptive activity names
##---------------------------------------------

Data2<-merge(Data2,activity_labels,by.x="Activity",by.y="id")

##---------------------------------------------
## Step 5  :  The new tidy dataset with the average of each variable for each activity and each subject
##---------------------------------------------
## re-arrange the data
NewData<-cbind(Data2[,74:75],Data2[,2:72])
## aggregate and calculate the average
NewData<-aggregate(NewData,by=list(NewData$Subject,NewData$activity_label),FUN =mean)

## NewData is the new tidy dataset :)

##---------------------------------------------
##  Step 6: wirte the Tidy Data in a text file
##---------------------------------------------
write.table(NewData,file="TidyData.txt",sep = " ", row.names = FALSE,col.names = TRUE)