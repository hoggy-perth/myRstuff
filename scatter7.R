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

scatter <- ggplot(examData, aes(Anxiety, Exam, colour = Gender))

scatter <- scatter + geom_point() 

scatter <- scatter + geom_smooth(method = "lm") 

scatter <- scatter + labs(x = "Exam Anxiety", y = "Exam Performance %")

print(scatter)

imageFile <- file.path(imageDirectory,"Scatter7.png")
ggsave(imageFile)

