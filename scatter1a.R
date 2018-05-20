rm(list = ls())

library(ggplot2)

rootdir <- ("c:/development/RPROJECTS")
workdir <- paste(rootdir, "Second - Scatterplot", sep="/")
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(workdir, "Images", sep="/")

setwd(workdir)

dataFile <- file.path(dataDirectory,"Exam Anxiety.dat")

examData <- read.delim(dataFile,header=TRUE)

scatter <- ggplot(examData, aes(Anxiety,Exam)) 

scatter <- scatter + geom_point() 

print(scatter)

imageFile <- file.path(imageDirectory,"Scatter1a.png")
ggsave(imageFile)

