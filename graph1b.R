library(ggplot2)

rm(list = ls())
rootdir <- ("c:/development/RPROJECTS/First")
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"FacebookNarcissism.dat")
facebookData <- read.delim(dataFile,header=TRUE)

graph <- ggplot(facebookData,aes(NPQC_R_Total, Rating)) 

graph <- graph + geom_point(shape = 17)

print(graph)

imageFile <- file.path(imageDirectory,"Graph1b.png")
ggsave(imageFile)

