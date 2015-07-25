readDataSet <- function(dataSet){
    featureFile <- "UCI Har Dataset/features.txt"
    featureSet <- read.table(featureFile)
    #
    dataFile <- paste("UCI Har Dataset/",dataSet,"/X_",dataSet,".txt",sep="")
    rawData <- read.table(dataFile)
    names(rawData) <- featureSet[,2]
    rawData <- cbind(rawData[grep("-mean\\(|-std\\(",names(rawData))])
    #
    subjectFile <- paste("UCI Har Dataset/",dataSet,"/subject_",dataSet,".txt",sep="")
    subject <- read.table(subjectFile)
    subject <- rename(subject, Subject = V1)
    #
    processedData <- cbind(subject,rawData)
    return(processedData)
}
trainSet <- readDataSet("train")
testSet <- readDataSet("test")
mergedSet <- rbind(trainSet,testSet)
write.table(mergedSet, file = "mergedSet.txt", row.name=FALSE)

options(dplyr.width = Inf, dplyr.print_max = Inf)
tidyData <- mergedSet %>% group_by(Subject) %>% summarise_each(funs(mean))
write.table(tidyData, file = "tidyData.txt", row.name=FALSE)


