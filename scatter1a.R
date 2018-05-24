library(here)
library(ggplot2)

rm(list = ls())

scriptdir <- here()

rootdir <- scriptdir
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)


dataFile <- file.path(dataDirectory,"Exam Anxiety.dat")

examData <- read.delim(dataFile,header=TRUE)

scatter <- ggplot(examData, aes(Anxiety,Exam)) 

scatter <- scatter + geom_point() 

print(scatter)

imageFile <- file.path(imageDirectory,"Scatter1a.png")
ggsave(imageFile)

