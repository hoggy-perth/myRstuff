library(here)
library(ggplot2)

rm(list = ls())

scriptdir <- here()

rootdir <- scriptdir
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"FacebookNarcissism.dat")
facebookData <- read.delim(dataFile,header=TRUE)

graph <- ggplot(facebookData,aes(NPQC_R_Total, Rating)) 

graph <- graph + geom_point()

print(graph)

imageFile <- file.path(imageDirectory,"Graph1aa.png")
ggsave(imageFile)
