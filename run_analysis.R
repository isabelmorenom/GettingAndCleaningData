###############################################################################
#         SCRIPT  Getting and Cleaning Data Project
###############################################################################

############################
# GET DATA
############################

#Load packages

packages <- c("data.table", "reshape2","plyr")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

#Get path

path<-getwd()


#Get data

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
if (!file.exists(path)) {
  dir.create(path)
}
download.file(url, file.path(path, f))

#Unzip file

executable <-file.path("C:/Program Files/WinRAR/WinRaR.exe")
parameter <- "x"
cmd <- paste(paste0("\"", executable, "\""), parameter, paste0("\"", file.path(path, 
                                                                                f), "\""))
system(cmd)

#List Files in "UCI HAR Dataset" folder

list.files("UCI HAR Dataset",recursive=TRUE)

#Read the files (training and test dataset)

XTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
XTest  <- read.table("./UCI HAR Dataset/test/X_test.txt")

dim(XTrain)
dim(XTest)

#Read features

features <- read.table("./UCI HAR Dataset/features.txt")[,2]

###################################################################
# Step 1: Merges  training and test datasets to create one data set.
###################################################################

 df<-rbind(XTrain, XTest)

#Label the dataset

names(df)=features

dim(df)


####################################################################
# Step 2: Extracts only the measurements on the mean and standard deviation 
####################################################################

df=df[,grepl("(mean|std)\\(\\)", names(df))]

dim(df)

#######################################################################
# Setp 3: Uses descriptive activity names to name the activities in the data set
########################################################################

#Activity Datasets

yTrain <- read.table ("./UCI HAR Dataset/train/y_train.txt")
yTest  <- read.table("./UCI HAR Dataset/test/y_test.txt")

# Merge Activities datasets 

ydf<- rbind(yTrain, yTest)[, 1]
labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
names(labels)=c("cod","activity")
activities<-labels$activity[ydf]
names(activities)="activity"

# Read and merge Subjects Datasets.

subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subjectTest  <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(subjectTrain, subjectTest)[, 1]

str(as.character(activities))


##########################################################################
# Step 4: Appropriately labels the data set with descriptive variable names
##########################################################################

labelsoriginal<-names(df)
newlabels<-tolower(gsub("-|\\(\\)","",names(df)))
newlabels<-gsub("bodybody","body",newlabels)
newlabels<-gsub("x$","X",newlabels)
newlabels<-gsub("y$","Y",newlabels)
newlabels<-gsub("z$","Z",newlabels)
names(df)<-newlabels
complabels<-cbind(labelsoriginal,newlabels)

# Compare original with new labels

complabels

#Create tidy dataset

dftidy<-cbind(subjects,activities,df)

dim(dftidy)

head(dftidy[,1:5],12)



########################################################################
# Step 5: creates a second, independent tidy data set with the average of
# each  variable for each activity and each subject
########################################################################

dfmean=ddply(dftidy,.(subjects,activities),numcolwise(mean))

dim(dfmean)

head(dfmean[,1:5],12)


# Write to a file

write.table(dfmean, file = "tidyMeans.txt",row.name=FALSE)


###########################################################################
#                       END SCRIPT
###########################################################################