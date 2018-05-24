library(here)
library(ggplot2)

rm(list = ls())

scriptdir <- here()

rootdir <- scriptdir
workdir <- rootdir
dataDirectory  <-  paste(rootdir, "Data", sep="/")
imageDirectory <- paste(rootdir, "Images", sep="/")
setwd(workdir)

dataFile <- file.path(dataDirectory,"DownloadFestival.dat")
festivalData <- read.delim(dataFile,header=TRUE)

festivalHistogram <- ggplot(festivalData, aes(day1)) + theme(legend.position = "none")

festivalHistogram <- festivalHistogram + geom_histogram(binwidth = 0.4)

festivalHistogram <- festivalHistogram + labs(x = "Hygiene (Day 1 of Festival)", y = "Frequency")

print(festivalHistogram)

imageFile <- file.path(imageDirectory,"Hist1.png")
ggsave(imageFile)

