library(ggplot2)

rm(list = ls())
rootdir <- ("c:/development/RPROJECTS/First")
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"DownloadFestival.dat")
festivalData <- read.delim(dataFile,header=TRUE)

festivalBox <- ggplot(festivalData, aes(gender, day1))
festivalBox <- festivalBox + geom_boxplot() + labs(x = "Gender", y = "Hygiene (Day 1 of Festival)")

print(festivalBox)

imageFile <- file.path(imageDirectory,"Box1.png")
ggsave(imageFile)

#here is code to see the outlier record 
#outlier  <- subset(festivalData,day1>5)
#print(outlier)
