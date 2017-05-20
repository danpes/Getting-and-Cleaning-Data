# Course 3 "Getting and Cleaning Data" - week 4 assignment
# [0] --> get data in a local sandbox
# [1] --> manage tests data: get means snd std dev + label data sets
# [2] --> manage train data: get means snd std dev + label data sets
# [3] --> merge test and train data sets + label data sets
# [4] --> create a new tidy data set with means of activities 


library(data.table)
library(reshape2)

#setwd("C:\\Users\\daniele.pes\\Desktop\\coursera\\course3week4")
#getwd()

                                                                             # [0] --> get dataset in local sandbox
                                                                             # get data in local sandbox and clean it
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- file.path(getwd(), "dataset.zip")
download.file(url, f)
unzip(f)
file.remove(f)                                                               # just clean formerly downloaded zip dataset

al <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]                # get activity labels
fs <- read.table("./UCI HAR Dataset/features.txt")[,2]                       # get columns names

                                                                             # [1] --> manage TEST data
xt <- read.table("./UCI HAR Dataset/test/X_test.txt")                        # read X, Y and Subject test data
yt <- read.table("./UCI HAR Dataset/test/y_test.txt")
sjt <- read.table("./UCI HAR Dataset/test/subject_test.txt")

                                                                             # manipulate X tests data
names(xt) = fs                                                               # X tests: from names to features
m_sd_fs <- grepl("mean|std", fs)                                             # X tests: just means and standard deviations
xt = xt[, m_sd_fs]
                                                                             # manipulate Y tests data (labelling activities)
yt[,2] = al[yt[,1]]                                                          # Y tests: from activities to relating labels
names(yt) = c("activity id", "activity lbl")
                                                                             # manipulate SUBJECT tests data
names(sjt) = "subject"

td <- cbind(as.data.table(sjt), yt, xt)                                      # bind test data

                                                                             # [2] --> manage TRAIN data
                                                                             # read X, Y and Subject train data
xtn <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytn <- read.table("./UCI HAR Dataset/train/y_train.txt")
sjtn <- read.table("./UCI HAR Dataset/train/subject_train.txt")

                                                                             # manipulate X train data
names(xtn) = fs                                                              # X train: from names to features
xtn = xtn[,m_sd_fs]                                                          # X train: just means and standard deviations

                                                                             # manipulate Y train data (labelling activities)
ytn[,2] = al[ytn[,1]]
names(ytn) = c("activity id", "activity lbl")
                                                                             # manipulate SUBJECT train data
names(sjtn) = "subject"

tnd <- cbind(as.data.table(sjtn), ytn, xtn)                                   # bind train data

                                                                             # [3] --> merge test and train data and coherently lable it
data = rbind(td, tnd)
ilbls = c("subject", "activity id", "activity lbl")
dlbls = setdiff(colnames(data), ilbls)
md = melt(data, id = ilbls, measure.vars = dlbls)

                                                                             # [4] --> calculate mean on whole data set and create a tidy one on file
tidyd = dcast(md, subject + al ~ variable, mean)
write.table(tidyd, file = "./tidy_data.txt")
