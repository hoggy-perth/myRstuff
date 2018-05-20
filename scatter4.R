library(ggplot2)

rm(list = ls())
rootdir <- ("c:/development/RPROJECTS/First")
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"Exam Anxiety.dat")
examData <- read.delim(dataFile,header=TRUE)

scatter <- ggplot(examData, aes(Anxiety,Exam)) 
scatter <- scatter + geom_point() 
scatter <- scatter + geom_smooth(method = "lm",colour = "Red") 
scatter <- scatter  + labs(x = "Exam Anxiety", y = "Exam Performance %")

print(scatter)

imageFile <- file.path(imageDirectory,"Scatter4.png")
ggsave(imageFile)

